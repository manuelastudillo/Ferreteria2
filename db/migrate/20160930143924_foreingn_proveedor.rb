class ForeingnProveedor < ActiveRecord::Migration
  def change
  	  		add_foreign_key :proveedors, :comunas, column: :comuna_id, primary_key: "id"

  end
end
