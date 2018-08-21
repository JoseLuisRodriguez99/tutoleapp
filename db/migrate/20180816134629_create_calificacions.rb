class CreateCalificacions < ActiveRecord::Migration[5.1]
  def change
    create_table :calificacions do |t|
      t.integer :valor
      t.string :descripcion
      # t.references :usuario, foreign_key: true
      # t.references :usuario, foreign_key: true

      t.references :usuario_estudiante, index: true, foreign_key: {to_table: :usuarios}
      t.references :usuario_docente, index: true, foreign_key: {to_table: :usuarios}
      
      t.timestamps
    end
  end
end
