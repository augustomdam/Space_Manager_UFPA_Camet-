class Espaco < ApplicationRecord
  has_many :reservas
  has_many :pcds
  has_many :manutencaos
  belongs_to :bloco

  enum disponivel: [:disponivel, :ocupado]
end
