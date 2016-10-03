class ClientesController < ApplicationController
   before_action :authenticate_user!
  before_action :set_cliente, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @clientes = Cliente.paginate(:page => params[:page], :per_page => 10)
          respond_to do |format|
     format.html
     format.pdf do
      pdf = ClientesPdf.new(@clientes)
     send_data pdf.render, :filename =>'Clientes.pdf',  
                           :type =>'aplication/pdf',
                           :disposition => 'inline'
end  
end  
  end

def inde
  @usuarios = Usuario.all
end

  def nuevo
    @cliente = Cliente.new
  end

  def crear
    @cliente = Cliente.new(cliente_params)
    respond_to do |format|
      if @cliente.save

        format.html{redirect_to cliente_url@cliente, notice:  'Cliente Guardado Con Exito'}

      else
        format.html{render :nuevo}
      end
    end
  end

  def editar
  end

  def mostrar
       /@cliente = Cliente.find(params[:id])
  /
  end

  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html{redirect_to @cliente, notice: 'cliente Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'cliente eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :comuna_id, :rut,:domicilio,:fax,:telefono1,:email)
    end
end