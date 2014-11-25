class ProfessoresController < ApplicationController

	def index
		@professores = Professor.order :nome
	end

	def show
		@professor = Professor.find(params[:id])
	end

	def destroy
		@professor = Professor.find(params[:id])
		@professor.destroy
		redirect_to(action: "index")
	end

	def new
		@professor = Professor.new
	end

	def create
		@professor = Professor.new(params[:professor])
		if @professor.save
			redirect_to(action: "show", id: @professor)
		else
			render action: "new"
		end
	end

	def edit
		@professor = Professor.find(params[:id])
	end

	def update
		@professor = Professor.find(params[:id])
		if @professor.update_attributes(params[:professor])
			redirect_to action: "show", id: @professor
		else
			render action: "edit"
		end
	end

end
