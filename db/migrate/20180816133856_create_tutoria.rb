class CreateTutoria < ActiveRecord::Migration[5.1]
  def change
    create_table :tutoria do |t|
      t.datetime :fecha
      t.string :descripcion
      t.float :presupuesto
      ##.references :usuario, foreign_key: true
      ###t.references :usuario, foreign_key: true
      t.references :lugar, foreign_key: true
      t.references :materia, foreign_key: true
      t.references :usuario_estudiante, index: true, foreign_key: {to_table: :usuarios}
      t.references :usuario_docente, index: true, foreign_key: {to_table: :usuarios}
      t.timestamps
    end
  end
end
