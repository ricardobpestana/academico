class HorasController < ApplicationController

	def index
		@horas = Hora.order :id
	end

	def show
		@hora = Hora.find(params[:id])
	end

	def destroy
		@hora = Hora.find(params[:id])
		@hora.destroy
		redirect_to(action: "index")
	end

	def new
		@hora = Hora.new
	end

	def create
		@hora = Hora.new(params[:hora])
		if @hora.save
			redirect_to(action: "show", id: @hora)
		else
			render action: "new"
		end
	end

	def edit
		@hora = Hora.find(params[:id])
	end

	def update
		@hora = Hora.find(params[:id])
		if @hora.update_attributes(params[:hora])
			redirect_to action: "show", id: @hora
		else
			render action: "edit"
		end
	end

end
