class Tarea < ActiveRecord::Base
  belongs_to :factura
  has_and_belongs_to_many :productos
end
