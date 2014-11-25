#coding:utf-8

class Matriz < ActiveRecord::Base

  attr_accessible :periodo, :qtd_aulas_semana, :curso_id, :disciplina_id

	validates_presence_of :periodo
	validates_presence_of :qtd_aulas_semana

	validates_numericality_of :periodo
	validates_numericality_of :qtd_aulas_semana

	belongs_to :curso
	belongs_to :disciplina

end
