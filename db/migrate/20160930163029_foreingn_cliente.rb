class ForeingnCliente < ActiveRecord::Migration
  def change
 add_foreign_key :clientes, :comunas, column: :comuna_id, primary_key: "id"
  end
end
