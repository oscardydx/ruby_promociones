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
    if index<0 || index>=@listaProductos.lenght
      return
    end
    return listaProductos.delete(index)
  end

  def registrarPromocion(tipoPromocion,x,y)
    @listaProductos.last.crearPromocion(tipoPromocion,x,y)
  end

  def mostrarListaProductos
    cadena="#Codigo    ||      Producto ";
    contador=1
    for objeto in @listaProductos
      cadena+="\n|#{contador}: #{objeto}"
      contador+=1
    end
    return cadena
  end
end
