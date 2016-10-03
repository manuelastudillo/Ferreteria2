class PersonalsController < ApplicationController
  before_action :set_personal, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @personals = Personal.paginate(:page => params[:page], :per_page => 10)
       respond_to do |format|
  format.html
     format.pdf do
     pdf = PersonalsPdf.new(@personals)
    send_data pdf.render, :filename =>'personals.pdf',  
                          :type =>'aplication/pdf',
                         :disposition => 'inline'
end  
end  
  end


  
  def mostrar
       /@personal= Personal.find(params[:id])
  /
  end
 

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  #  def proveedor_params
  #    params.require(:proveedor).permit(:nombre,:abreviacion,:razon_social,:rut,:domicilio,:fax,:telefono1,:telefono2,:web,:email,:descripcion, :comuna_id)
  #  end
end

  