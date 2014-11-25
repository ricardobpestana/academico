class CursosController < ApplicationController

	def index
		@cursos = Curso.order :nome
	end

	def show
		@curso = Curso.find(params[:id])
	end

	def destroy
		@curso = Curso.find(params[:id])
		@curso.destroy
		redirect_to(action: "index")
	end

	def new
		@curso = Curso.new
	end

	def create
		@curso = Curso.new(params[:curso])
		if @curso.save
			redirect_to(action: "show", id: @curso)
		else
			render action: "new"
		end
	end

	def edit
		@curso = Curso.find(params[:id])
	end

	def update
		@curso = Curso.find(params[:id])
		if @curso.update_attributes(params[:curso])
			redirect_to action: "show", id: @curso
		else
			render action: "edit"
		end
	end

end
