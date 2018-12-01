RailsAdmin.config do |config|

  ### Popular gems integration

  #== Devise ==
   config.authenticate_with do
    warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end

  config.main_app_name = ["Space Manager UFPA Cametá", ""]
  config.navigation_static_links = {
    'UFPA Cametá' => 'http://www.campuscameta.ufpa.br/'
  }
  config.navigation_static_label = "Links Úteis"

  config.model User do
    create do
      field  :nome
      field  :cod
      field  :admin
      field  :ativo
      field  :photo
    end
   
    edit do
      field  :nome
      field  :cod
      field  :admin
      field  :ativo
      field  :photo
    end
    list do
      field  :photo
      field  :nome
      field  :email
      field  :admin
      field  :ativo
      field  :created_at
    end
  end
  config.model Espaco do
    create do
      field  :numero_sala
      field  :descricao
      field  :capacidade
      field  :disponivel
      field  :bloco
    end
   
    edit do
      field  :numero_sala
      field  :descricao
      field  :capacidade
      field  :disponivel
      field  :bloco
    end
  end
  config.model Reserva do
    create do
      field  :inicio
      field  :fim
      field  :ativo
      field  :observacao
      field  :espaco
      field  :turma
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
   
    edit do
      field  :inicio
      field  :fim
      field  :ativo
      field  :observacao
      field  :espaco
      field  :turma
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
  config.model Pcd do
    create do
      field  :tipo
      field  :cid
      field  :turma_id
      field  :espaco_id
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
   
    edit do
      field  :tipo
      field  :cid
      field  :turma_id
      field  :espaco_id
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
  config.model Manutencao do
    create do
      field  :descricao
      field  :espaco_id
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
   
    edit do
      field  :descricao
      field  :espaco_id
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
end