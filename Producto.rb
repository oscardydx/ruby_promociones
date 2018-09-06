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

  def codigoProducto
    @codigoProducto
  end

  def nombre
    @nombre
  end

  def precio
    @precio
  end

  def unidad
    @unidad
  end

  def estoyEnPromocion
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
