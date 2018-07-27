productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

# 2.1
productos.each { |producto, valor| puts "#{producto} - #{valor}" }

#2.2
productos['cereal'] = 2200
print "\n\n"
productos.each { |producto, valor| puts "#{producto} - #{valor}" }

#2.3
productos['bebida'] = 2000
print "\n\n"
print productos
productos.each { |producto, valor| puts "#{producto} - #{valor}" }

#2.4
productos_arr = productos.productos_arr
print "\n"
print productos_arr

#2.5
producto.delete('galletas')
print "\n"
print productos
