array = [1, 2, 3, 4, 5]

puts "Array original"
puts " #{array}"

# essa forma cria um novo array
puts "Executando .map multiplicando cada item por 2"

multiply_results = array.map do |item|
  item * 2
end

puts "Novo array"
puts " #{multiply_results}"

puts "Executando .map! somando cada item do array com 10"

array.map! do |item|
  item + 10
end

puts "Array original alterado"
puts " #{array}"
