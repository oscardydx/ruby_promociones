require "./Simulacion"
class Menu
  def initialize
    @simulacion=Simulacion.new
  end
  def desplegarMenu
    puts '     Bienvendio al menú'
    puts 'Por favor seleccione una opcion:'
    puts '1. Registrar un producto'
    puts '2. Eliminar un producto'
    puts '3. Ejecutar caja'
    puts '4. Salir de la aplicacion'
    ejecutarOpcionMenu(gets.chomp.to_i)
    desplegarMenu
  end
  def ejecutarOpcionMenu(opcion)
    case opcion
    when 1
      registrarProducto
    when 2
      eliminarProducto
    when 3
      ejecutarCaja
    when 4
      !exit
    else
      puts 'Por favor digite una opcion validad'
    end
  end

  def registrarProducto
    producto = Hash.new #[:nombreProducto,:precioProducto,:unidad,:promocion]
    puts 'Ingrese el nombre del producto'
    producto[:nombreProducto]=gets.chomp.to_s
    puts 'Ingrese el precio del producto'
    producto[:precioProducto]=gets.chomp.to_i
    puts 'Ingrese las unidades'
    producto[:unidades]=gets.chomp.to_s
    puts "¿El producto: #{producto[:nombreProducto]} esta en promocion? s/n"
    producto[:estoyEnPromocion] = gets.chomp.to_s
    @simulacion.añadirProducto(producto)
    puts "Se ha registrado el producto #{producto[:nombreProducto]}"
    if producto[:estoyEnPromocion]=="s" || producto[:estoyEnPromocion]=="S"
      mostrarListaPromociones
      seleccionarTipoPromocion(gets.chomp.to_i)
      @simulacion.registrarPromocion()
    end
  end
  def seleccionarTipoPromocion(n)
    case n
    when 1
      puts 'Ingrese la cantidad minima a comprar'
      y=gets.chomp.to_i
      loop do
        puts 'Ingrese la cantidad minima que se cobrara (recuerde que debe ser menor a lo que se compra)'
        x=gets.chomp.to_i
        break if(x<y)
      end
    when 2
      puts 'Ingrese la cantidad minima a comprar'
      x=gets.chomp.to_i
      puts 'Ingrese el porcentaje que se cobrara (un valor entero)'
      y=gets.chomp.to_i
    when 3
      puts 'Ingrese la cantidad minima a comprar'
      x=gets.chomp.to_i
      puts 'Ingrese el valor a pagar por la cantidad minima'
      y=gets.chomp.to_i
    else
      puts 'digite una opcion valida'
      mostrarListaPromociones
      seleccionarTipoPromocion(gets.chomp.to_i)
    end
    @simulacion.registrarPromocion(n,x,y)
  end

  def mostrarListaPromociones
    puts 'Ingrese la promocion que desea aplicar'
    puts "1.Usted puede llevar X y solo pague Y"
    puts "2.Usted puede llevar X y solo tiene que pagar el M %"
    puts "3.Usted puede llevar X por tan solo N pesos"
  end

  def eliminarProducto
    puts @simulacion.mostrarListaProductos
    puts '¿Ingrese el codigo del producto que desea eliminar?'
    codigo=gets.chomp.to_i
    temp=@simulacion.eliminarProducto(codigo)
    if(temp==-1)
      puts 'Producto no encontrado.'
    else
      puts "Se ha eliminado con exito #{temp.to_string}"
    end

  end

  def ejecutarCaja

  end
end
main = Menu.new
main.desplegarMenu
