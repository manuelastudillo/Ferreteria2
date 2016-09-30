class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
    	
      t.text :nombre
      t.string :abreviacion
      t.text :codigo_barras
      t.integer :comision
      t.integer :stock
      t.integer :stockminimo
      t.integer :precio_compra
      t.integer :precio_venta
      t.integer :descuento
      t.text :descripcion
      t.string :foto
      t.integer :proveedor_id
      t.integer :categoria_id
      t.integer :marca_id
      t.timestamps null: false
    end
  end
end
