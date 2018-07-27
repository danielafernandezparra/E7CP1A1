h = {"x": 1, "y":2}
print "#{h}\n"

h[:z] = 3
print "#{h}\n"

h[:x] = 5
print "#{h}\n"

h.delete(:y)
print "#{h}\n"

print "yeaaa!!!\n\n" if h.key?(:z)

i = {}
h.each do |llave, valor|
  i[:"#{valor}"] = llave
end
print "#{i}\n"
print h.invert
