#coding:utf-8

class Professor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
    attr_accessible :matricula, :nome, :email, :ch_semanal, :data_adm, :email, :password, :password_confirmation, :remember_me

	validates_presence_of :matricula
	validates_presence_of :nome
	validates_presence_of :email
	validates_presence_of :ch_semanal
	validates_presence_of :data_adm
	validates_presence_of :email
	validates_presence_of :password
	validates_presence_of :password_confirmation
	validates_uniqueness_of :matricula

	validates_numericality_of :ch_semanal

	has_many :disponibilidades
	has_many :horarios
	has_many :preferencias

end
