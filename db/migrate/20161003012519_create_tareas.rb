class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.integer :numero
      t.date :fecha
      t.integer :monto
      t.references :factura, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
