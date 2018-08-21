class CreateDocumentos < ActiveRecord::Migration[5.1]
  def change
    create_table :documentos do |t|
    t.string :archivo
     t.string :estado
     t.string :tipo  
     t.timestamps
    end
  end
end
