class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :nombre
      t.date :fecha
      t.integer :numero
      t.integer :monto
      t.integer :cantidad
      t.integer :total
      t.text :tipo

      t.timestamps null: false
    end
  end
end
