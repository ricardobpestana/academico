class MatrizesController < ApplicationController

	def index
		@matrizes = Matriz.all
	end

	def show
		@matriz = Matriz.find(params[:id])
	end

	def destroy
		@matriz = Matriz.find(params[:id])
		@matriz.destroy
		redirect_to(action: "index")
	end

	def new
		@matriz = Matriz.new
	end

	def create
		@matriz = Matriz.new(params[:matriz])
		if @matriz.save
			redirect_to(action: "show", id: @matriz)
		else
			render action: "new"
		end
	end

	def edit
		@matriz = Matriz.find(params[:id])
	end

	def update
		@matriz = Matriz.find(params[:id])
		if @matriz.update_attributes(params[:matriz])
			redirect_to action: "show", id: @matriz
		else
			render action: "edit"
		end
	end

end
