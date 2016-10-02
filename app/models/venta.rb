class Venta < ActiveRecord::Base
	self.table_name = "ventas"
	 belongs_to :boletas
has_and_belongs_to_many :productos
end
