class Espaco < ApplicationRecord
  has_many :reservas
  belongs_to :bloco
  has_many :pcds
  has_many :manutencaos

  enum disponivel: [:disponivel, :ocupado]
end
