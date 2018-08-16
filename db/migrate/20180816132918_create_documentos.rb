class CreateDocumentos < ActiveRecord::Migration[5.1]
  def change
    create_table :documentos do |t|
      t.string :archivo
      ##Como hacer enum
    #  t.enum status: [:validado, :rechazado], _suffix: true
    t.string :estado
    #  t.enum status: { validado: 0, rechazado: 1 }
    t.string :tipo  
      t.timestamps
    end
  end
end
