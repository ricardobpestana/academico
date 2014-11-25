#coding: utf-8
RailsAdmin.config do |config|

  config.main_app_name = ['Confict', 'Admin'] 
  config.current_user_method { current_admin } # auto-generated
  config.excluded_models = [Inscricao] # Excluir models do admin

  config.navigation_static_label = "Gerência"
  config.navigation_static_links = {
  'Gerenciar Horários' => 'www.google.com.br',
  }

  #Configuração do model Página
  config.model Pagina do
    object_label_method do
      :custom_label_method_pagina
    end
    label "Páginas"
    list do
      exclude_fields :id, :link
      field :created_at do
          label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
    edit do 
      field :titulo do
        help 'Campo Obrigatório'
        label 'Título'
      end
      field :conteudo, :ck_editor
      field :conteudo do
        label 'Conteúdo'
      end 
    end
  end
  
  config.model User do
    object_label_method do
      :custom_label_method_usuario
    end
    label "Usuário"
    list do
      include_fields :id, :numero_inscricao, :nome, :coordenador, :cpf, :instituicao, :email, :created_at, :updated_at
      field :numero_inscricao do
        label 'Inscrição'
      end
      field :coordenador do
        label 'Orientador'
      end
      field :instituicao do
        label 'Instituição'
      end
      field :created_at do
        label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end

    edit do 
      field :nome do
        help 'Campo Obrigatório'
      end
      field :cpf do
        help 'Campo Obrigatório'
      end
      field :instituicao, :enum do
        enum do
          ['IFFluminense', 'UFF', 'UENF', 'Outros']
        end
        help 'Campo Obrigatório'
        label 'Instituição'
      end
      field :coordenador do
        label "Papel de Orientador" 
      end
      field :email do 
        help 'Campo Obrigatório'
      end
      field :password do 
        help 'Campo Obrigatório'
        label 'Senha'
      end
    end
  end

  config.model Arquivocpf do
    object_label_method do
      :custom_label_method_arquivo_cpf
    end
    label "Base de Cpf"
    list do
      exclude_fields :id
      field :created_at do
          label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
    edit do 
      field :cpf do
        help 'Campo Obrigatório'
        label 'CPF'
      end
    end
  end

  config.model Resumo do
    object_label_method do
      :custom_label_method_resumo
    end
    list do
      exclude_fields :id
      field :created_at do
          label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
    edit do 
      field :titulo do
        help 'Campo Obrigatório'
        label 'Título'
      end
      field :tipo, :enum do
        enum do
          ['BANNER', 'ORAL']
        end
        help 'Campo Obrigatório'
        label 'Tipo'
      end
      
      field :autoria do
        help 'Campo Obrigatório'
        label 'Autoria'
      end
      field :apresentador do
        help 'Campo Obrigatório'
        label 'Apresentador'
      end
      field :projeto do
        help 'Campo Obrigatório'
        label 'Projeto'
      end
      field :arquivo do
        help 'Campo Obrigatório'
        label 'Arquivo'
      end

    end
  end

  config.model ProjetoUser do
    object_label_method do
      :custom_label_method_projeto_user
    end
    label "Projeto/Usuário"
    list do
      field :user do
          label 'Usuário'
      end
      field :projeto do
          label 'Projeto'
      end
      field :tipo do
          label 'Tipo'
      end
      field :created_at do
          label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
    edit do 
      field :user do
        label 'Usuário'
      end
      field :projeto do
        label 'Projeto'
      end
      field :tipo, :enum do
        enum do
          ['Orientador', 'Bolsista']
        end
      end
    end
  end

  config.model Projeto do
    object_label_method do
      :custom_label_method_projeto
    end
    list do
      field :nome do
        label 'Nome'
      end
      field :instituicao do
        label 'Instituição'
      end
      field :users do
        label 'Vinculados'
      end
      field :area_de_conhecimento do
        label 'Área de Conhecimento'
      end
      field :created_at do
          label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
    edit do 
      field :nome do
        help 'Campo Obrigatório'
        label 'Título'
      end
      field :instituicao, :enum do
        enum do
          ['IFFluminense', 'UFF', 'UENF']
        end
        help 'Campo Obrigatório'
        label 'Instituição'
      end
      field :area_de_conhecimento, :enum do
        enum do
          ["Ciências Exatas e da Terra", "Ciências Biológicas", "Engenharias", "Ciências da Saúde", "Ciências Agrárias", "Ciências Sociais Aplicadas", "Ciências Humanas", "Linguística, Letras e Artes", "Outros"]
        end
        help 'Campo Obrigatório'
        label 'Área de Conhecimento'
      end 
    end
  end

  config.model Ckeditor::Asset do
    label "Arquivos"
    object_label_method do
      :custom_label_method_arquivo
    end
    list do
      exclude_fields :id
      field :data_file_name do
        label 'Nome do Arquivo'
      end
      field :type do
        label 'Tipo'
      end
      field :data_content_type do
        label 'Formato'
      end
      field :data_file_size do
        label 'Tamanho'
      end
      field :height do
        label 'Altura'
      end
      field :width do
        label 'Largura'
      end
      field :created_at do
          label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
  end

  config.model Ckeditor::AttachmentFile do
    label "Documentos"
    object_label_method do
      :custom_label_method_documento
    end
    edit do 
      field :data do
        help 'Campo Obrigatório'
        label 'Arquivo'
      end
    end
    list do
      exclude_fields :id
      field :height do
        label 'Altura'
      end
      field :width do
        label 'Largura'
      end
      field :type do
        label 'Tipo'
      end
      field :data do
        label 'Arquivo'
      end
      field :created_at do
        label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
  end

  config.model Ckeditor::Picture do
    label "Imagem"
    object_label_method do
      :custom_label_method_imagem
    end
    edit do 
      field :data do
        help 'Campo Obrigatório'
        label 'Arquivo'
      end
    end
    list do
      exclude_fields :id
      field :height do
        label 'Altura'
      end
      field :width do
        label 'Largura'
      end
      field :type do
        label 'Tipo'
      end
      field :data do
        label 'Arquivo'
      end
      field :created_at do
        label 'Criado em'
      end
      field :updated_at do
        label 'Atualizado em'
      end
    end
  end

  def custom_label_method_projeto_user
    "#{self.projeto.nome} - #{self.user.nome}"
  end

  def custom_label_method_pagina
    "#{self.titulo}"
  end

  def custom_label_method_usuario
    "#{self.nome}"
  end

  def custom_label_method_arquivo_cpf
    "#{self.cpf}"
  end

  def custom_label_method_projeto
    "#{self.nome}"
  end
  def custom_label_method_documento
    "#{self.data_file_name}"
  end
  def custom_label_method_imagem
    "#{self.data_file_name}"
  end
  def custom_label_method_arquivo
    "#{self.data_file_name}"
  end
  def custom_label_method_resumo
    "#{self.titulo}"
  end
end
