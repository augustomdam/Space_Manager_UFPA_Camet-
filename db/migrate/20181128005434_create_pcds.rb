class CreatePcds < ActiveRecord::Migration[5.2]
  def change
    create_table :pcds do |t|
      t.text :tipo
      t.string :cid
      t.references :turma, foreign_key: true
      t.references :espaco, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
