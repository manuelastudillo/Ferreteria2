class CreateJoinTableProductosVentas < ActiveRecord::Migration
  def change
    create_join_table :productos, :ventas do |t|
      # t.index [:producto_id, :venta_id]
      # t.index [:venta_id, :producto_id]
    end
  end
end
