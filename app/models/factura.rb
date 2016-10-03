class Factura < ActiveRecord::Base
	has_many :tareas
	accepts_nested_attributes_for :tareas, allow_destroy: true
end
