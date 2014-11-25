#coding:utf-8

class Turma < ActiveRecord::Base

  attr_accessible :curso_id, :periodo, :turno, :qtd_alunos

	validates_presence_of :periodo
	validates_presence_of :turno
	validates_presence_of :qtd_alunos

	validates_numericality_of :periodo
	validates_numericality_of :qtd_alunos

	belongs_to :curso

end
