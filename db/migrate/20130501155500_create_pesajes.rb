class CreatePesajes < ActiveRecord::Migration
  def change
    create_table :pesajes do |t|
      t.float :peso
      t.integer :ComidasConProteinas
      t.integer :cliente_id

      t.timestamps
    end
    add_index :pesajes, [ :cliente_id, :created_at]
  end
end
