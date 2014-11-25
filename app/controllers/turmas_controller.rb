class TurmasController < ApplicationController

	def index
		@turmas = Turma.all
	end

	def show
		@turma = Turma.find(params[:id])
	end

	def destroy
		@turma = Turma.find(params[:id])
		@turma.destroy
		redirect_to(action: "index")
	end

	def new
		@turma = Turma.new
	end

	def create
		@turma = Turma.new(params[:turma])
		if @turma.save
			redirect_to(action: "show", id: @turma)
		else
			render action: "new"
		end
	end

	def edit
		@turma = Turma.find(params[:id])
	end

	def update
		@turma = Turma.find(params[:id])
		if @turma.update_attributes(params[:turma])
			redirect_to action: "show", id: @turma
		else
			render action: "edit"
		end
	end

end
