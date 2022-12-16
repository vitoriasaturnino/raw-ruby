print "Digite o número do mes que você nasceu: "

month = gets.chomp.to_i

case month
when 1..3
  puts "você nasceu no verão"
when 4..6
  puts "você nasceu no outono"
when 7..9
  puts "você nasceu no inverno"
when 10..12
  puts "você nasceu na primavera"
else
  puts "não sei em que estação você nasceu =("
end
