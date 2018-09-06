require './Producto'
class Inventario
  @listaProductos=Array.new
  #{:codigo,:nombre,:precio,:unidad}
  def registrarProducto(params)
    temporal = producto.initialize(params)
    @listaProductos << temporal
  end
end
