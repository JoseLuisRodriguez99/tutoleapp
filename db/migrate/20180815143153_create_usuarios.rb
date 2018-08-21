class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :documento
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :tipo_usuario
      t.string :nivel_academico
      t.timestamps
    end
  end
end
