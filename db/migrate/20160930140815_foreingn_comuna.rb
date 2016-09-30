class ForeingnComuna < ActiveRecord::Migration
  def change
  	  	add_foreign_key :comunas, :provincias, column: :provincia_id, primary_key: "id"

  end
end
