class CreateEspacos < ActiveRecord::Migration[5.2]
  def change
    create_table :espacos do |t|
      t.integer :numero_sala
      t.text :descricao
      t.integer :capacidade
      t.integer :disponivel
      t.references :reserva, foreign_key: true
      t.references :bloco, foreign_key: true
      t.references :pcd, foreign_key: true

      t.timestamps
    end
  end
end
