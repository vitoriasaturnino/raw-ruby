hash = {0 => "zero", 1 => "um", 2 => "dois", 3 => "tres", 4 => "quatro", 5 => "cinco"}

puts "Selection keys com valor maior que 3"

selection_key = hash.select do |key, value|
  key > 3
end

puts selection_key