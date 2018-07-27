personas = ["Carolina", "Alejandro", "Maria Jesus", "Valentin"]
edades = [32, 28, 41, 19]

#personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}

#4.1
personas_edades = personas.zip(edades).to_h
print personas_edades
print "\n"

#4.2
def promedio(h_pmt)
  h_pmt.values.sum / h_pmt.length
end

print promedio personas_edades
print "\n"
