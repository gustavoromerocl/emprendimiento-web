class Usuario < ApplicationRecord
    has_many :has_cursos
    has_many :cursos, through: :has_cursos
    attr_accessor :elementos_curso

    def guardar_cursos
        elementos_curso.each do |curso_id|
            HasCurso.find_or_create_by(usuario: self, curso_id: curso_id)
        end
    end
    
end
