inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
opcion = 0

txt_menu = <<menu
  Selecciona una opcion
  1. Agregar item
  2. Eliminar item
  3. Actualizar item
  4. Ver Stock total
  5. Ver Item con mayor Stock
  6. Consultar si existe un Item
  7. salir
menu

def opcion_1(inv)
  print "Agregar item con Stock\n"
  print "* Separa el nombre del stock mediante una coma.\n"
  item = gets.chomp.split(',')
  print inv[item.first] = item.last.to_i
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_2(inv)
  print "Elimine item con Stock\n"
  print "* El nombre del item debe existir\n"
  item = gets.chomp
  print "Eliminando item: #{item}\n" if inv.include?(item)
  print "No existe el item: #{item}\n" unless inv.include?(item)
  inv.delete(item)
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_3(inv)
  print "Actualizar item con Stock\n"
  print "* Separa el nombre del stock mediante una coma.\n"
  item = gets.chomp.split(',')
  actualizando = "Actualizando item: #{item}\n"
  no_existe = "No existe el item: #{item}\n"
  print inv.include?(item.first) ? actualizando : no_existe
  inv[item.first] = item.last.to_i if inv.inlude?(item.first)
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_4(inv)
  print "Ver Stock total\n"
  total_stock = inv.values.sum
  print "Tu stock total es: #{total_stock}"
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_5(inv)
  print "Ver Item con mayor Stock\n"
  mayor_stock = inv.max_by { |llave, valor| valor }
  print "Item con mayor stock #{mayor_stock.first}, y su valor es #{mayor_stock.last}"
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_6(inv)
  print "Consulta por item\n"
  print "* ingresa el nombre del item a consultar.\n"
  item = gets.chomp
  print "Existe item: #{item}\n" if inv.include?(item)
  print "No existe el item: #{item}\n" unless inv.include?(item)
  inv.delete(item)
  print "\n\n"
  print inv
  print "\n\n"
end

while opcion != 7
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    opcion_1 inventario
  when 2
    opcion_2 inventario
  when 3
    opcion_3 inventario
  when 4
    opcion_4 inventario
  when 5
    opcion_5 inventario
  when 6
    opcion_6 inventario
  when 7
    print "Elejiste salir\n"
  else
    print "Error de opcion\n"
  end
end
