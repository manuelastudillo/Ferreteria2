class Producto < ActiveRecord::Base

	  belongs_to :proveedor
      belongs_to :categoria
      belongs_to :marca
      has_and_belongs_to_many :ventas
      has_and_belongs_to_many :tareas

      validates :nombre,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
validates :abreviacion,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
validates :comision, numericality: {only_integer: true, :message => " debe contener solo numeros"}
validates :stock, numericality: { only_integer: true, :message => " debe contener solo numeros"}
validates :stockminimo, numericality: { only_integer: true, :message => " debe contener solo numeros"}
validates :precio_compra, numericality: { only_integer: true, :message => " debe contener solo numeros"}
validates :precio_venta, numericality: { only_integer: true, :message => " debe contener solo numeros"}
validates :stock, numericality: { only_integer: true, :message => " debe contener solo numeros"}




end
