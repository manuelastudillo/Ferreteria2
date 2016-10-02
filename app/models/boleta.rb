class Boleta < ActiveRecord::Base
		self.table_name = "boletas"
 has_many :ventas
 accepts_nested_attributes_for :ventas, allow_destroy: true


end
