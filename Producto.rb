require "./promocion"
class Producto

  attr_accessor :codigo
  attr_accessor :nombre
  attr_accessor :precio
  attr_accessor :unidad
  def initialize(params)
    @codigo_producto = params[:codigo_producto]
    @nombre = params[:nombre]
    @precio = params[:precio]
    @unidad = params[:unidad]
    @estoyEnPromocion = params[:estoyEnPromocion]
  end

  def get_codigoProducto
    @codigoProducto
  end

  def get_nombre
    @nombre
  end

  def get_precio
    @precio
  end

  def get_unidad
    @unidad
  end

  def get_estoyEnPromocion
    @estoyEnPromocion
  end

  def crearPromocion
    if estoyEnPromocion
      promocion.initialize
    else
    end
  end

  def calcularPrecioProducto(precio)

  end

  def to_string
    return "Codigo Producto: #{codigo_producto}, nombre: #{nombre}, precio: #{precio}, unidad: #{unidad}, ¿tiene promocion?: #{estoyEnPromocion.t_} "
  end
end
