class CreateCategoria < ActiveRecord::Migration
  def change
        create_table :categorias do |t|
      t.text     :nombre
      t.text   :abreviacion
      t.boolean :estado
      t.string   :descripcion
      t.timestamps null: false
    end
  end
end
