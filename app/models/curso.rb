#coding:utf-8

class Curso < ActiveRecord::Base

  attr_accessible :tipo, :nome, :qtd_periodos, :ch_total

	validates_presence_of :tipo
	validates_presence_of :nome
	validates_presence_of :qtd_periodos
	validates_presence_of :ch_total

	validates_uniqueness_of :nome

	validates_numericality_of :qtd_periodos
	validates_numericality_of :ch_total

	has_many :matrizes
	has_many :turmas

end
