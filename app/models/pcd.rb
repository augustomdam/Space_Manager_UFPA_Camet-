class Pcd < ApplicationRecord
  belongs_to :turma
  belongs_to :espacos
  has_one :user
end
