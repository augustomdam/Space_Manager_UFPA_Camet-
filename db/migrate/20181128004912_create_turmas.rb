class CreateTurmas < ActiveRecord::Migration[5.2]
  def change
    create_table :turmas do |t|
      t.string :curso
      t.date :ingresso
      t.string :turno
      t.string :tipo

      t.timestamps
    end
  end
end
