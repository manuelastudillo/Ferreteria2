class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.text :nombre
      t.integer :comuna_id
      t.text :rut
      t.text :domicilio
      t.integer :telefono1
      t.text :email
      t.timestamps null: false
    end
  end
end