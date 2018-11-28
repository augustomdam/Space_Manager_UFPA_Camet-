class CreateBlocos < ActiveRecord::Migration[5.2]
  def change
    create_table :blocos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
