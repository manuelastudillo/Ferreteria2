class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.text     :nombre
      t.text   :abreviacion
      t.string   :descripcion
      t.timestamps null: false
    end
  end
end
