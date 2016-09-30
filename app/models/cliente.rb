class Cliente < ActiveRecord::Base
	    belongs_to :comuna


validates :nombre,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
validates :rut, rut: true
validates :telefono1, numericality: { only_integer: true, :message => " debe contener solo numeros"}

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, format: { :with => VALID_EMAIL_REGEX , message: "el formato del correo es invalido" }
	
end
