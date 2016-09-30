class ProveedorsPdf < Prawn::Document
	def initialize(proveedors)
     super(top_Margin: 70)
   @proveedors=proveedors
   text "Proveedores" , size: 30, style: :bold
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
    	[["Nombre","Telefono","web","Email"]]+
    	@proveedors.map do  |item|
    	[item.nombre, item.telefono1, item.web, item.email] 
    	end
    	end 
end