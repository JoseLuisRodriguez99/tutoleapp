class Documento < ApplicationRecord
    enum estado: [ :validado, :rechazado  ]
end
