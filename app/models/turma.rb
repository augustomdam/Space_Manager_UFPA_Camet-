class Turma < ApplicationRecord
    has_many :pcds
    belongs_to :reserva
end
