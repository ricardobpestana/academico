class PreferenciasController < ApplicationController

	def index
		@preferencias = Preferencia.all
	end

	def show
		@preferencia = Preferencia.find(params[:id])
	end

	def destroy
		@preferencia = Preferencia.find(params[:id])
		@preferencia.destroy
		redirect_to(action: "index")
	end

	def new
		@preferencia = Preferencia.new
	end

	def create
		@preferencia = Preferencia.new(params[:preferencia])
		if @preferencia.save
			redirect_to(action: "show", id: @preferencia)
		else
			render action: "new"
		end
	end

	def edit
		@preferencia = Preferencia.find(params[:id])
	end

	def update
		@preferencia = Preferencia.find(params[:id])
		if @preferencia.update_attributes(params[:preferencia])
			redirect_to action: "show", id: @preferencia
		else
			render action: "edit"
		end
	end

end
