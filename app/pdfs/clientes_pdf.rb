class ClientesPdf < Prawn::Document
	def initialize(clientes)
     super(top_Margin: 70)
   @clientes=clientes
   text "Clientes" , size: 30, style: :bold
   line_items
  
	end

	def line_items
		move_down 20
		table line_item_rows do
    row(0).font_style = :bold
    columns(1..3).align = :right
    self.row_colors =["DDDDDD","FFFFFF"]
    self.header = true
	end
end
    def line_item_rows
    	[["nombre","Rut","Domicilio","Telefono","Email"]]+
    	@clientes.map do  |item|
    	[item.nombre, item.rut, item.domicilio, item.telefono1, item.email] 
    	end
    	end 
end