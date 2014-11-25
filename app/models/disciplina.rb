class Disciplina < ActiveRecord::Base

  attr_accessible :sigla, :nome

	validates_presence_of :nome
	validates_presence_of :sigla

	has_many :preferencias
	has_many :matrizes
	has_many :horarios

	#, message: " - deve ser preenchido!"

end
