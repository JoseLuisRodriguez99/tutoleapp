class CreateLugars < ActiveRecord::Migration[5.1]
  def change
    create_table :lugars do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end
