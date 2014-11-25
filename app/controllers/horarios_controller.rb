class HorariosController < ApplicationController

	def create
		@horario = Horario.new(hora_id: params[:hora], dia_id: params[:dia], disciplina_id: params[:disciplina], professor_id: params[:professor])
		@horario.save
		redirect_to 'gerencia/buscar_gradehorario'
	end

end
