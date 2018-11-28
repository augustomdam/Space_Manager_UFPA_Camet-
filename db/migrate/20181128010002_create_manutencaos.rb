class CreateManutencaos < ActiveRecord::Migration[5.2]
  def change
    create_table :manutencaos do |t|
      t.text :descricao
      t.references :espaco, foreign_key: true
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
