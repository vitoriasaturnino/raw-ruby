product_status = "closed"

# também é possível usar "if not" no lugar de "unless", este operador funciona da mesma forma
unless product_status == "open"
  check_change = "can"
else 
  check_change = "can not"
end

puts "You #{check_change} change the product"
