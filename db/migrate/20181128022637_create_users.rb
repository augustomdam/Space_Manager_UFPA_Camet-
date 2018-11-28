class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :cod
      t.integer :admin
      t.integer :ativo

      t.timestamps
    end
  end
end
