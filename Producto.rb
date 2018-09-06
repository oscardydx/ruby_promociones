require "./promocion"
class Producto

  def initialize(codigo_producto, nombre, precio, unidad, estoyEnPromocion)
    @codigo_producto = codigo_producto
    @nombre = nombre
    @precio = precio
    @unidad = unidad
    @estoyEnPromocion = estoyEnPromocion
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
  def crearPromocion()

  end

  def calcularPrecioProducto(precio)

  end

  def to_string
    return "Codigo Producto: #{codigo_producto}, nombre: #{nombre}, precio: #{precio}, unidad: #{unidad}, ¿tiene promocion?: #{estoyEnPromocion.t_} "
  end

end
