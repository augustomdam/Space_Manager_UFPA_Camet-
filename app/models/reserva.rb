class Reserva < ApplicationRecord
  belongs_to :espaco
  belongs_to :user
  belongs_to :turma
  
  enum ativo: [:ativo, :inativo]
end
