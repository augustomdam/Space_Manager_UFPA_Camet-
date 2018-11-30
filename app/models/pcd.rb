class Pcd < ApplicationRecord
  belongs_to :turma
  belongs_to :espaco
  has_one :user
end
