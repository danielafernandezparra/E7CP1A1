restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

print restaurant_menu
print "\n"

#6.1
mas_caro = restaurant_menu.keys.max_by { |llave, valor| valor }
print mas_caro
print "\n"

#6.2
mas_economico = restaurant_menu.keys.min_by { |llave, valor| valor }
print mas_economico
print "\n"

#6.3
promedio = restaurant_menu.values.sum / restaurant_menu.length
print promedio
print "\n"

#6.4
nombre_platos = restaurant_menu.keys
print nombre_platos
print "\n"

#6.5
valores_platos = restaurant_menu.values
print valores_platos
print "\n"

#6.6
menu_con_iva = restaurant_menu.each { |llave, valor| restaurant_menu[llave] = valor * 1.19}
print menu_con_iva
print "\n"

#6.7
menu_con_descuento = restaurant_menu.each { |llave, valor| restaurant_menu[llave] = valor * 0.8 if llave.index(" ")}
print menu_con_descuento
print "\n"
