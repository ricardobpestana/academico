class DiasController < ApplicationController

	def index
		@dias = Dia.order :id
	end

	def show
		@dia = Dia.find(params[:id])
	end

	def destroy
		@dia = Dia.find(params[:id])
		@dia.destroy
		redirect_to(action: "index")
	end

	def new
		@dia = Dia.new
	end

	def create
		@dia = Dia.new(params[:dia])
		if @dia.save
			redirect_to(action: "show", id: @dia)
		else
			render action: "new"
		end
	end

	def edit
		@dia = Dia.find(params[:id])
	end

	def update
		@dia = Dia.find(params[:id])
		if @dia.update_attributes(params[:dia])
			redirect_to action: "show", id: @dia
		else
			render action: "edit"
		end
	end

end
