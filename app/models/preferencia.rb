#coding:utf-8

class Preferencia < ActiveRecord::Base

  attr_accessible :ano, :semestre, :disciplina_id, :professor_id

	validates_presence_of :ano
	validates_presence_of :semestre

	validates_numericality_of :ano
	validates_numericality_of :semestre

	belongs_to :professor
	belongs_to :disciplina
	
end