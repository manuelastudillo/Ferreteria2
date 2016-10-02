class CategoriasController < ApplicationController
  before_action :set_categoria, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @categorias = Categoria.paginate(:page => params[:page], :per_page => 10)
          respond_to do |format|
     format.html
     format.pdf do
      pdf = CategoriasPdf.new(@categorias)
     send_data pdf.render, :filename =>'Categorias.pdf',  
                           :type =>'aplication/pdf',
                           :disposition => 'inline'
end  
end  
end

  def nuevo
    @categoria = Categoria.new
  end

  def crear
    @categoria = Categoria.new(categoria_params)
    respond_to do |format|
      if @categoria.save

   format.html{redirect_to categoria_url(@categoria), notice:  'Categoria Guardado Con Exito'}

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
      if @categoria.update(categoria_params)
        format.html{redirect_to @categoria, notice: 'Categoria Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @categoria.destroy
    respond_to do |format|
      format.html { redirect_to categorias_url, notice: 'Categoria eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_params
      params.require(:categoria).permit(:nombre,:abreviacion,:estado,:descripcion)
    end
end
