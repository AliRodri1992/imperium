class CreateCiclos < ActiveRecord::Migration[5.2]
  def change
    create_table :ciclos do |t|
      t.integer :año_inicio
      t.integer :año_fin

      t.timestamps
    end
  end
end
