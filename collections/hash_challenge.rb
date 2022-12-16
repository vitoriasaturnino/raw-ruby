puts "------------------------------------------------------------------------"
puts "                               HASH RUBY                                "
puts "------------------------------------------------------------------------"

hash = {}
cont = 0

loop do
  print "\nAdicione uma chave: "
  key = gets.chomp
  hash[key] = key
  print "Adicione um valor para a chave: "
  value = gets.chomp
  hash.store(key, value)

  cont += 1
  break if cont >= 3
end

puts "\n------------------------------------------------------------------------"
hash.each do |key, value|
  puts "Uma das chaves é #{key} e seu valor é #{value}"
end
puts "------------------------------------------------------------------------"
