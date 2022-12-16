puts "-----------------------------------"
puts "              POWER                "
puts "-----------------------------------"

numbers = []
continue = "s"

loop do
  print "\nDigite o um valor: "
  value = gets.chomp.to_i
  numbers.push(value)
  print "deseja adicionar outro valor? [S/N]: "
  continue = gets.chomp
  puts "#{numbers}"
  break if continue == "n"
end

numbers.map! do |number|
  number ** 2
end

puts "\n-----------------------------------"
puts "calculando..."
puts "#{numbers}"
puts "-----------------------------------"
