class Disponibilidade < ActiveRecord::Base

  attr_accessible :dia_id, :hora_id, :professor_id

	belongs_to :professor
	belongs_to :hora
	belongs_to :dia


  def self.professores_disponiveis(dia, hora, disciplina_id)
		@disponibilidades = Disponibilidade.find(:all, :conditions => "hora_id = #{hora.id}")
    @professores = []
    @disponibilidades.each do |disponibilidade|
      if disponibilidade.dia == dia
      	disponibilidade.professor.preferencias.each do |preferencia|
	    		if preferencia.disciplina.id == disciplina_id
	        	@professores << disponibilidade.professor
	        end
	      end
      end
    end
    return @professores
  end

end

