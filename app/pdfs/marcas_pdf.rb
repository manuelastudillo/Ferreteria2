class MarcasPdf < Prawn::Document
	def initialize(marcas)
     super(top_Margin: 70)
   @marcas=marcas
   text "marcas" , size: 30, style: :bold
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
    	[["nombre","Abreviacion","Descripcion"]]+
    	@marcas.map do  |item|
    	[item.nombre, item.abreviacion, item.descripcion] 
    	end
    	end 
end