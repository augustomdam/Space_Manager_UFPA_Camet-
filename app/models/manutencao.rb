class Manutencao < ApplicationRecord
  belongs_to :espaco
  has_one :user
end
