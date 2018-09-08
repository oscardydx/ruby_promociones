require "./Producto"

class Simulacion
  def initialize
    @listaProductos = []
  end

  def añadirProducto(params)
    producto=Producto.new(params)
    @listaProductos<<producto
  end

  def eliminarProducto(index)
    if index<0 || index>@listaProductos.length
      return -1
    end
    return @listaProductos.delete_at(index-1)
  end

  def registrarPromocion(tipoPromocion,x,y)
    @listaProductos.last.crearPromocion(tipoPromocion,x,y)
  end

  def mostrarListaProductos
    cadena="#Codigo ||  Producto ";
    contador=1
    for objeto in @listaProductos
      cadena+="\n|#{contador}: #{objeto.to_string}"
      contador+=1
    end
    return cadena
  end
end
