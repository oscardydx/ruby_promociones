require './inventario'
class Menu

  def mostrarMenu
      puts 'Por favor seleccione una opcion:'
      puts '1. Registrar productos'
      puts '2. Ejecutar caja'
      puts '3. Salir de la aplicacion'
      ejecutarOpcion(gets.chomp.to_i)
      mostrarMenu()
  end

  def ejecutarOpcion(opcion)
      case opcion
      when 1
        registrarProductos
      when 2

      when 3
        system('exit')
      else
      puts 'Ingresó una opcion incorrecta'
    end
  end

  def registrarProductos
    producto=Hash.new
    puts 'ingrese el codigo del producto'
    producto[:codigoProducto] = gets.chomp
    puts 'ingrese el nombre del producto'
    producto[:nombreProducto] = gets.chop
    puts 'ingrese el precio del producto'
    producto[:precioProducto] = gets.chomp
    puts 'ingrese la masa del producto en gramos'
    producto[:masa] = gets.chomp
    @inventario ||= Inventario.new
    @invetario.registrarProducto
    end
end

main=Menu.new
main.mostrarMenu
