#coding: utf-8

RailsAdmin.config do |config|

  config.main_app_name = ['TCC', 'Admin'] 
  config.current_user_method { current_admin } # auto-generated
  config.excluded_models = [Admin]

  config.navigation_static_label = "Gerência"
  config.navigation_static_links = {
  'Gerenciar Grades de Horário' => '/gerencia/buscar_gradehorario',
  }
  

  #Configuração do model Curso
  config.model Curso do
    object_label_method do
      :custom_label_method_curso
    end
    label "Cursos"
    list do
      exclude_fields :id, :created_at, :updated_at, :matrizes, :turmas
      field :nome do
        label 'Nome'
      end
      field :qtd_periodos do
          label 'Qtde Períodos'
      end
      field :ch_total do
          label 'Carga Horária Total'
      end
    end
    edit do
      field :tipo do
        help 'Campo Obrigatório'
        label 'Tipo'
      end
      field :nome do
        help 'Campo Obrigatório'
        label 'Nome'
      end
      field :qtd_periodos do
      	help 'Campo Obrigatório'
        label 'Qtde Períodos'
      end
      field :ch_total do
      	help 'Campo Obrigatório'
        label 'Carga Horária Total'
      end
    end
  end

  #Configuração do model Dia
  config.model Dia do
    object_label_method do
      :custom_label_method_dia
    end
    label "Dias"
    list do
      exclude_fields :id, :created_at, :updated_at, :disponibilidades, :horarios
      field :dia do
        label 'Dia'
      end
    end
    edit do
      field :dia do
        help 'Campo Obrigatório'
        label 'Dia'
      end
    end
  end

  #Configuração do model Disciplina
  config.model Disciplina do
    object_label_method do
      :custom_label_method_disciplina
    end
    label "Disciplinas"
    list do
      exclude_fields :id, :preferencias, :matrizes, :horarios, :created_at, :updated_at
      field :sigla do
        label 'Sigla'
      end
      field :nome do
        label 'Nome'
      end
    end
    edit do
      field :sigla do
      	help 'Campo Obrigatório'
        label 'Sigla'
      end
      field :nome do
        help 'Campo Obrigatório'
        label 'Nome'
      end
    end
  end

#Configuração do model Disponibilidade
  config.model Disponibilidade do
    # object_label_method do
    #   :custom_label_method_disponibilidade
    # end
    label "Disponibilidades"
    list do
      exclude_fields :id, :created_at, :updated_at
    end
    edit do
      field :dia do
      	help 'Campo Obrigatório'
        label 'Dia'
      end
      field :hora do
      	help 'Campo Obrigatório'
        label 'Hora'
      end
      field :professor do
      	help 'Campo Obrigatório'
        label 'Professor'
      end
    end
  end

  #Configuração do model Hora
  config.model Hora do
    object_label_method do
      :custom_label_method_hora
    end
    label "Horas"
    list do
      exclude_fields :id, :created_at, :updated_at, :disponibilidades, :horarios
      field :hora do
        label 'Hora'
      end
      field :turno do
          label 'Turno'
      end
    end
    edit do
      field :hora do
        help 'Campo Obrigatório'
        label 'Hora'
      end
      field :turno do
        help 'Campo Obrigatório'
        label 'Turno'
      end
    end
  end

#Configuração do model Horario
  config.model Horario do
    # object_label_method do
    #   :custom_label_method_horario
    # end
    label "Horários"
    list do
      exclude_fields :id, :created_at, :updated_at
    end
    edit do
      field :dia do
        help 'Campo Obrigatório'
        label 'Dia'
      end
      field :hora do
        help 'Campo Obrigatório'
        label 'Hora'
      end
      field :professor do
        help 'Campo Obrigatório'
        label 'Professor'
      end
      field :disciplina do
        help 'Campo Obrigatório'
        label 'Disciplina'
      end
    end
  end

#Configuração do model Matriz
  config.model Matriz do
    # object_label_method do
    #   :custom_label_method_matriz
    # end
    label "Matriz"
    list do
      exclude_fields :id, :created_at, :updated_at
      field :periodo do
        label 'Período'
      end
      field :qtd_aulas_semana do
        label 'Qtde Aulas Semanais'
      end
    end
    edit do
      field :periodo do
      	help 'Campo Obrigatório'
        label 'Período'
      end
      field :qtd_aulas_semana do
        help 'Campo Obrigatório'
        label 'Qtde Aulas Semanais'
      end
      field :disciplina do
        help 'Campo Obrigatório'
        label 'Disciplina'
      end
      field :curso do
        help 'Campo Obrigatório'
        label 'Curso'
      end
    end
  end

#Configuração do model Preferencia
  config.model Preferencia do
    # object_label_method do
    #   :custom_label_method_preferencia
    # end
    label "Preferências"
    list do
      exclude_fields :id, :created_at, :updated_at
    end
    edit do
      field :ano do
      	help 'Campo Obrigatório'
        label 'Ano'
      end
      field :semestre do
        help 'Campo Obrigatório'
        label 'Semestre'
      end
      field :disciplina do
        help 'Campo Obrigatório'
        label 'Disciplina'
      end
      field :professor do
        help 'Campo Obrigatório'
        label 'Professor'
      end
    end
  end

#Configuração do model Professor
  config.model Professor do
    object_label_method do
      :custom_label_method_professor
    end
    label "Professores"
    list do
      exclude_fields :id, :disponibilidades, :horarios, :preferencias, :created_at, :updated_at
    end
  end

  #Configuração do model Turma
  config.model Turma do
    # object_label_method do
    #   :custom_label_method_turma
    # end
    label "Turmas"
    list do
      exclude_fields :id, :curso_id, :created_at, :updated_at
      field :created_at do
        label 'Criado em'
      end
      field :qtd_alunos do
        label 'Qtde Alunos'
      end
    end
    edit do
      field :qtd_alunos do
      	help 'Campo Obrigatório'
        label 'Qtde Alunos'
      end
      field :turno do
        help 'Campo Obrigatório'
        label 'Turno'
      end
      field :curso do
        help 'Campo Obrigatório'
        label 'Curso'
      end
      field :periodo do
      	help 'Campo Obrigatório'
        label 'Período'
      end
    end
  end

  def custom_label_method_curso
    "#{self.nome}"
  end

  def custom_label_method_dia
    "#{self.dia}"
  end

  def custom_label_method_disciplina
    "#{self.nome}"
  end

  # def custom_label_method_disponibilidade
  #   "#{self.professor.nome} - #{self.dia.dia} - #{self.hora.hora}"
  # end

  def custom_label_method_hora
    "#{self.hora}"
  end

  # def custom_label_method_horario
  #   "#{self.professor.nome} - #{self.dia.dia} - #{self.hora.hora} - #{self.disciplina.nome}"
  # end

  # def custom_label_method_matriz
  #   "#{self.curso.nome} - #{self.disciplina.nome}"
  # end

  # def custom_label_method_preferencia
  #   "#{self.professor.nome} - #{self.disciplina.nome}"
  # end

  def custom_label_method_professor
    "#{self.nome}"
  end

  # def custom_label_method_turma
  #   "#{self.curso.nome} - #{self.periodo} - #{self.turno}"
  # end

end