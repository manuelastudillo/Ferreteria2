class ForeingnProducto < ActiveRecord::Migration
  def change

  	    	add_foreign_key :productos, :marcas, column: :marca_id, primary_key: "id"
  	  		add_foreign_key :productos, :categorias, column: :categoria_id, primary_key: "id"
 	  		add_foreign_key :productos, :proveedors, column: :proveedor_id, primary_key: "id"

  end
end
