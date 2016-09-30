class ProductosController < ApplicationController
  before_action :set_producto, only: [:mostrar, :editar, :update, :eliminar]
  #before_action :authenricate_usarios, only: [:mostrar,:editar,:update,:eliminar]

  def index
    @productos = Producto.paginate(:page => params[:page], :per_page => 10)
     respond_to do |format|
     format.html
     format.pdf do
      pdf = ProductosPdf.new(@productos)
     send_data pdf.render, :filename =>'productos.pdf',  
                           :type =>'aplication/pdf',
                           :disposition => 'inline'
end  
end  
end
  def nuevo
    @producto = Producto.new
  end

  def crear
    @producto = Producto.new(producto_params)
    respond_to do |format|
      if @producto.save
           format.html{redirect_to producto_url(@producto), notice:  'producto Guardado Con Exito'}
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
      if @producto.update(producto_params)
        format.html{redirect_to @producto, notice: 'producto Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'producto eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:nombre,:abreviacion, :codigo_barras,:comision,:stock,:stockminimo, :precio_compra,:precio_venta,:descuento,:descripcion,:proveedor_id,:categoria_id, :marca_id)
    end
end
