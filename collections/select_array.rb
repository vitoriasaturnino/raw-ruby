array = [1, 2, 3, 4, 5, 6, 7]

selection = array.select do |i|
  i >= 4
end

puts selection