#coding:utf-8

class GerenciaController < ApplicationController
	
	def buscar
		session[:turno] = nil
		session[:curso] = nil
		session[:periodo] = nil

		@cursos = Curso.order(:nome)
		
		@periodos = ""
		(1..8).each do |periodo|
			@periodos.concat("<option>#{periodo}</option>")
		end

		@turnos = ""
		['Manha', 'Tarde', 'Noite'].each do |turno|
			@turnos.concat("<option>#{turno}</option>")
		end
	end

	def gerencia
		session[:turno] = params[:turno] unless params[:turno].nil?
		session[:curso] = params[:curso] unless params[:curso].nil?
		session[:periodo] = params[:periodo] unless params[:periodo].nil?

		@horas = Hora.where(:turno => session[:turno])
		@cursos = Curso.find(session[:curso])
		@dias = Dia.all
		@periodo = session[:periodo]
		@disciplinas = []
		Matriz.where(:curso_id => session[:curso]).where(:periodo => session[:periodo]).each do |matriz|
			@disciplinas.append(matriz.disciplina)
		end
		
	end

	def criar_horario
		@professores = []
		@horarios = Horario.all
		@horario = Horario.new(periodo: params[:periodo], hora_id: params[:hora], dia_id: params[:dia], disciplina_id: params[:disciplina], professor_id: params[:professor])
		@horarios.each do |h|
			if h.dia == @horario.dia and h.hora == @horario.hora and h.professor == @horario.professor
				@professores << @horario.professor
			end
		end
		if @professores == []
			@horario.save
			redirect_to '/gerencia/gradehorario'
		else
			flash[:notice] = 'Este professor já está alocado em outra turma neste horário'
			redirect_to '/gerencia/gradehorario'
		end
	end

	def add_object_action
    render :update do |p|
      p.replace_html "object_action", :partial => "professores", :locals => { dia: params[:dia], hora: params[:hora], disciplina_id: params[:option] }
    end   
  end


end
