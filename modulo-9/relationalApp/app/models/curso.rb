class Curso < ApplicationRecord
    has_many :has_cursos
    has_many :cursos, through: :has_cursos
end
