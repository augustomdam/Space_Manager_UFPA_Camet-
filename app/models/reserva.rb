class Reserva < ApplicationRecord

  validates_presence_of :data_reserva, message: 'não pode ser deixado em branco'
  validates :ativo, presence: true
  validates_uniqueness_of :data_reserva, :espaco, message: 'espaço ja reservado, tente outra data'


  belongs_to :espaco
  belongs_to :user
  belongs_to :turma
  
  enum ativo: [:ativo, :inativo]
end