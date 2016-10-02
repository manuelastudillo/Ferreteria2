class ForeingnVenta < ActiveRecord::Migration
  def change
  	  	  	add_foreign_key :ventas, :productos, column: :producto_id, primary_key: "id"
  	    add_foreign_key :ventas, :clientes,  column: :cliente_id, primary_key: "id"
  	    add_foreign_key :ventas, :users,  column: :usuario_id, primary_key: "id"
  	    	    add_foreign_key :ventas, :boletas,  column: :boleta_id, primary_key: "id"
  end
end
