class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum admin: [:admin, :normal]
    enum ativo: [:ativo, :inativo]

    has_many :reservas
    has_many :manutencaos
    has_many :pcds
end
