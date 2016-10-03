class BoletasController < ApplicationController
 before_action :authenticate_user!
 before_action :set_boleta, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @boletas = Boleta.paginate(:page => params[:page], :per_page => 10)
          respond_to do |format|
     format.html
     format.pdf do
      pdf = BoletasPdf.new(@boletas)
     send_data pdf.render, :filename =>'Venta.pdf',  
                           :type =>'aplication/pdf',
                           :disposition => 'inline'
end  
end  
end

  def nuevo
    @boleta = Boleta.new
  end

  def crear
    @boleta = Boleta.new(boleta_params)
    respond_to do |format|
      if @boleta.save

   format.html{redirect_to boleta_url(@boleta), notice:  'Boleta Guardado Con Exito'}

      else
        format.html{render :nuevo}
      end
    end
  end

  def editar
  end

  def mostrar
  end

  def update
    respond_to do |format|
      if @boleta.update(boleta_params)
        format.html{redirect_to @boleta, notice: 'boleta Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @boleta.destroy
    respond_to do |format|
      format.html { redirect_to boletas_url, notice: 'Boleta eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleta
      @boleta = Boleta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleta_params
      params.require(:boleta).permit(:fecha, :numero, :monto, :factura, :cantidad, :total, :tipo, ventas_attributes:[
        :id, :numero, :fecha, :monto,:_destroy, :producto_ids[]
        ]
        )
    end


end
