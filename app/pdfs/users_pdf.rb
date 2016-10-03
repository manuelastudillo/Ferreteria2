class UsersPdf < Prawn::Document
  def initialize(users)
     super(top_Margin: 70)
   @users=users
   text "Personals" , size: 30, style: :bold
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
      [["Nombre","Rut","Email","Telefono"]]+
      @users.map do  |item|
      [item.nombre, item.rut, item.email, item.telefono
      ] 
      end
      end 
end