#require "./Promocion"
class Producto
  attr_accessor :nombreProducto,:precioProducto,:unidad,:estoyEnPromocion
  def initialize(params)
    @nombreProducto = params[:nombreProducto]
    @precioProducto = params[:precioProducto]
    @unidad = params[:unidad]
    @estoyEnPromocion = params[:estoyEnPromocion]
  end
  def crearPromocion(tipoPromocion,x,y)
    @tipoPromocion=Promocion.new(tipoPromocion,x,y)
  end
  def to_string
    "Nombre: #{@nombreProducto}, Precio: #{@precioProducto}, Unidad: #{@unidad}"
  end
end

class Promocion
  def initialize(tipoPromocion,x,y)
    @tipoPromocion=seleccionarTipoPromocion(tipoPromocion,x,y)
  end
  def seleccionarTipoPromocion(i,x,y)
    case i
    when 1
      inicializarlleveNpagueM(x,y)
    when 2
      inicializarlleveNpaguePorcentaje(x,y)
    when 3
      inicializarlleveNsoloPagueX(x,y)
    end
  end
  def inicializarlleveNpagueM(cantidadMinimaComprar,cantidadMinimaPagar)
    @cantidadMinimaComprar=cantidadMinimaComprar
    @cantidadMinimaPagar=cantidadMinimaPagar
    return 1
  end
  def inicializarlleveNpaguePorcentaje(cantidadMinimaComprar,porcentaje)
    @cantidadMinimaComprar=cantidadMinimaPagar
    @porcentaje=porcentaje
    return 2
  end
  def inicializarlleveNsoloPagueX(cantidadMinimaComprar,soloPagar)
    @cantidadMinimaComprar=cantidadMinimaComprar
    @soloPagar=soloPagar
    return 3
  end
  def to_s
    case @tipoPromocion
    when 1
      "Usted puede llevar #{@cantidadMinimaComprar} solo pagando #{@cantidadMinimaPagar} "
    when 2
      "Usted puede llevar #{@cantidadMinimaComprar} y solo tiene que pagar el #{@porcentaje}%"
    when 3
      "Usted puede llevar #{@cantidadMinimaComprar} por tan solo #{@soloPagar} pesos"
    end
  end
end
