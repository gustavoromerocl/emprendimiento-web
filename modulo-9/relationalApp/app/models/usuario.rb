class Usuario < ApplicationRecord
    has_many :has_cursos
    has_many :cursos, through: :has_cursos
    attr_accessor :elementos_curso

    def guardar_cursos
        return has_cursos.destroy_all if elementos_curso.nil? || elementos_curso.empty?

        #has_cursos.where.not(curso_id: elementos_curso).destroy_all

        elementos_curso.each do |curso_id|
            HasCurso.find_or_create_by(usuario: self, curso_id: curso_id)
        end
    end
    
end
