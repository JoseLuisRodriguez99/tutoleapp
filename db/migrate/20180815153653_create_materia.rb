class CreateMateria < ActiveRecord::Migration[5.1]
  def change
    create_table :materia do |t|
      t.string :nombre
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
