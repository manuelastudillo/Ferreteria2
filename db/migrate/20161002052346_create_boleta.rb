class CreateBoleta < ActiveRecord::Migration
  def change
    create_table :boletas do |t|
      t.datetime :fecha
      t.integer :numero
      t.integer :monto
      t.boolean :factura
      t.integer :cantidad
      t.integer :total
      t.text :tipo
      t.timestamps null: false
    end
  end
end