class Calificacion < ApplicationRecord
  belongs_to :usuario_estudiante, class_name: :Usuario 
  belongs_to :usuario_docente, class_name: :Usuario 
end
