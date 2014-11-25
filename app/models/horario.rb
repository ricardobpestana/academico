class Horario < ActiveRecord::Base

  attr_accessible :dia_id, :disciplina_id, :hora_id, :professor_id, :periodo

	belongs_to :professor
	belongs_to :hora
	belongs_to :dia
	belongs_to :disciplina

end
