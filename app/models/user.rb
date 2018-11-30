class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum admin: {admin: 1, normal: 0}
    enum ativo: {ativo: 1, inativo: 0}

    has_many :reservas
    has_many :manutencaos
    has_many :pcds

  mount_uploader :photo, PhotoUploader
end
