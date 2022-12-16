def power(base, exponent)
  base ** exponent
end

puts "-------------------------------------------------"
puts "                   POWER METHOD                  "
puts "-------------------------------------------------"
print "Insira a base para a potenciação: "
base = gets.chomp.to_i
print "Insira o expoente: "
exponent = gets.chomp.to_i

puts "\ncalculando..."
puts "\nA potência de #{base} elevado a #{exponent} é igual a #{power(base, exponent)}"
puts "-------------------------------------------------"
