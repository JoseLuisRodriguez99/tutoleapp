class Documento < ApplicationRecord
    enum estado: [ :validado, :rechazado  ]
    enum tipo: [ :CC, :Diploma, :Tarjeta_Profesional, :Acta_Grado  ]
end