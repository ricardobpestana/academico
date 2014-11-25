class DisponibilidadesController < ApplicationController

	def index
		@disponibilidades = Disponibilidade.all
	end

	def show
		@disponibilidade = Disponibilidade.find(params[:id])
	end

	def destroy
		@disponibilidade = Disponibilidade.find(params[:id])
		@disponibilidade.destroy
		redirect_to(action: "index")
	end

	def new
		@disponibilidade = Disponibilidade.new
	end

	def create
		@disponibilidade = Disponibilidade.new(params[:disponibilidade])
		if @disponibilidade.save
			redirect_to(action: "show", id: @disponibilidade)
		else
			render action: "new"
		end
	end

	def edit
		@disponibilidade = Disponibilidade.find(params[:id])
	end

	def update
		@disponibilidade = Disponibilidade.find(params[:id])
		if @disponibilidade.update_attributes(params[:disponibilidade])
			redirect_to action: "show", id: @disponibilidade
		else
			render action: "edit"
		end
	end

end
