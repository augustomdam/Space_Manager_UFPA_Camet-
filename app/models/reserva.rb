class Reserva < ApplicationRecord
  has_one :turma
  belongs_to :espaco
  belongs_to :user
  
  enum ativo: [:ativo, :inativo]
end
