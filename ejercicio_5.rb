meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#5.1
#opcion mas larga
meses_ventas = meses.zip ventas
h = meses_ventas.to_h
print h
print "\n"

#opcion express
mv = meses.zip(ventas).to_h
print mv
print "\n"

#5.2
#opcion 1
print mv.invert
print "\n"

#opcion 2
vm = mv.invert
print vm
print "\n"

#5.3
#solo mes
print vm[vm.keys.max]
print "\n"

#solo valor
print vm.keys.max
print "\n"

#ambos
print "#{vm[vm.keys.max]} : #{vm.keys.max}"
