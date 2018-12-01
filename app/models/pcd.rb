class Pcd < ApplicationRecord
  belongs_to :turma
  belongs_to :espaco
  belongs_to :user
end
