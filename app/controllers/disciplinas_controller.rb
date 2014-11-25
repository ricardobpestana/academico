class DisciplinasController < ApplicationController

	def index
		@disciplinas = Disciplina.order :nome
	end

	def show
		@disciplina = Disciplina.find(params[:id])
	end

	def destroy
		@disciplina = Disciplina.find(params[:id])
		@disciplina.destroy
		redirect_to(action: "index")
	end

	def new
		@disciplina = Disciplina.new
	end

	def create
		@disciplina = Disciplina.new(params[:disciplina])
		if @disciplina.save
			redirect_to(action: "show", id: @disciplina)
		else
			render action: "new"
		end
	end

	def edit
		@disciplina = Disciplina.find(params[:id])
	end

	def update
		@disciplina = Disciplina.find(params[:id])
		if @disciplina.update_attributes(params[:disciplina])
			redirect_to action: "show", id: @disciplina
		else
			render action: "edit"
		end
	end

end
