class UsersController < ApplicationController
     before_action :authenticate_user!
  before_action :set_user, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @users = User.paginate(:page => params[:page], :per_page => 10)
       respond_to do |format|
  format.html
     format.pdf do
     pdf = UsersPdf.new(@users)
    send_data pdf.render, :filename =>'Personal.pdf',  
                          :type =>'aplication/pdf',
                         :disposition => 'inline'
end  
end  
  end


  
  def mostrar
       /@user= User.find(params[:id])
  /
  end
 

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  #  def proveedor_params
  #    params.require(:proveedor).permit(:nombre,:abreviacion,:razon_social,:rut,:domicilio,:fax,:telefono1,:telefono2,:web,:email,:descripcion, :comuna_id)
  #  end
end

  

  

  
