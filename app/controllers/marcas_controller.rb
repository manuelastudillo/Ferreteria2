class MarcasController < ApplicationController
   before_action :authenticate_user!
before_action :set_marca, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @marcas = Marca.paginate(:page => params[:page], :per_page => 10)
      respond_to do |format|
     format.html
     format.pdf do
      pdf = MarcasPdf.new(@marcas)
     send_data pdf.render, :filename =>'Marcas.pdf',  
                           :type =>'aplication/pdf',
                           :disposition => 'inline'
end  
end  
end

  def nuevo
    @marca = Marca.new
  end

  def crear
    @marca = Marca.new(marca_params)
    respond_to do |format|
      if @marca.save

   format.html{redirect_to marca_url(@marca), notice:  'marca Guardado Con Exito'}

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
      if @marca.update(marca_params)
        format.html{redirect_to @marca, notice: 'marca Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @marca.destroy
    respond_to do |format|
      format.html { redirect_to marcas_url, notice: 'marca eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_params
      params.require(:marca).permit(:nombre,:abreviacion,:descripcion)
    end
end
