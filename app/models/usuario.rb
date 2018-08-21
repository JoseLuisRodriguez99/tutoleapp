class Usuario < ApplicationRecord
   # enum nivel_academico: [ :bachiller, :tecnico,:profesional  ]
    #enum tipo_usuario: [ :estudiante,:tutor ]
        
    has_many :usuario_estudiante, class_name: :Calificacion, foreign_key: "usuario_estudiante_id"
    has_many :usuario_docente, class_name: :Calificacion, foreign_key: "usuario_docente_id"
end
