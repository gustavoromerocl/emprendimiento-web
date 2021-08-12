class Usuario < ApplicationRecord
    VALIDA_FORMATO_CORREO = /([a-zA-Z0-9]([^ @&%$\\\/()=?¿!.,:;]?|\d?)+[a-zA-Z0-9][\.]){1,2}/
    validates   :nombre_usuario, :direccion, :escolaridad, :email, :profesion, presence: true
    validates   :nombre_usuario,  uniqueness: true
    validates   :nombre_usuario, length: {minimum:5, maximum:20}
    validates   :email, format: { with: VALIDA_FORMATO_CORREO }, uniqueness: {case_sensitive: false}
end
