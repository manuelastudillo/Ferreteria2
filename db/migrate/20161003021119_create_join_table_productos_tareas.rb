class CreateJoinTableProductosTareas < ActiveRecord::Migration
  def change
    create_join_table :productos, :tareas do |t|
      # t.index [:producto_id, :tarea_id]
      # t.index [:tarea_id, :producto_id]
    end
  end
end
