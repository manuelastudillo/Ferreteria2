class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|

      t.text :nombre
      t.string :abreviacion
      t.integer :comuna_id
      t.text :razon_social
      t.text :rut
      t.text :domicilio
      t.integer :fax
      t.integer :telefono1
      t.integer :telefono2
      t.text :web
      t.text :email
      t.text :descripcion
      t.timestamps null: false
    end
  end
end