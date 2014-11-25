class Dia < ActiveRecord::Base

  attr_accessible :dia

	validates_presence_of :dia

	has_many :disponibilidades
	has_many :horarios

end
