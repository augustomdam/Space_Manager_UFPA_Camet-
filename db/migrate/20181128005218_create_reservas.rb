class CreateReservas < ActiveRecord::Migration[5.2]
  def change
    create_table :reservas do |t|
      t.datetime :data_reserva
      t.integer :ativo
      t.text :observacao
      t.references :espaco, foreign_key: true
      t.references :turma, foreign_key: true
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
