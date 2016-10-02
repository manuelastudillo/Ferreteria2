class CreateVenta < ActiveRecord::Migration
  def change
    create_table :ventas do |t|

 
      t.integer :numero
      t.integer :cliente_id
      t.integer :usuario_id
      t.integer :producto_id
      t.datetime :fecha
      t.integer :monto


      t.timestamps null: false
    end
  end
end
