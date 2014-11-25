class HomeController < ApplicationController
	
	def index
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

	def show
		@horas = Hora.where(:turno => params[:turno])
		@cursos = Curso.find(params[:curso])
		@dias = Dia.all

		@disciplinas = []
		Matriz.where(:curso_id => params[:curso]).where(:periodo => params[:periodo]).each do |matriz|
			@disciplinas.append(matriz.disciplina)
		end	

		@professores = Professor.all
	end

end
