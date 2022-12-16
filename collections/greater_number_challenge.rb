puts "-----------------------------------------------"
puts "                GREATER NUMBER                 "
puts "-----------------------------------------------"

numbers = {A: 10, B: 30, C: 20, D:25, E: 15}
greater = 0

puts "hash = #{numbers}"

max_value = numbers.values.max
key = numbers.key(max_value)

puts "-----------------------------------------------"
puts "A chave #{key} => #{max_value} tem valor do hash"
puts "-----------------------------------------------"
