class Turma < ApplicationRecord
    has_many :pcds
    has_many :reservas
end
