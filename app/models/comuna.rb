class Comuna < ActiveRecord::Base
	 belongs_to :provincia
	 has_many :proveedor
	 has_many :cliente
	 has_many :user
end
