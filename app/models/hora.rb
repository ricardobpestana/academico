class Hora < ActiveRecord::Base

  attr_accessible :hora, :turno

	validates_presence_of :hora

	has_many :disponibilidades
	has_many :horarios

end
