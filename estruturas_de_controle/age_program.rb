result = ""

loop do
  puts result
  puts "----------------------------------"
  puts "selecione uma das opções: "
  puts "1 - Calcular sua idade"
  puts "0 - Sair"
  puts "----------------------------------"
  print "opção: "

  option = gets.chomp.to_i

  if option == 1
    print "Digite o ano do seu nascimento: "
    year_of_birth = gets.chomp.to_i
    print "Digite o ano corrente: "
    current_year = gets.chomp.to_i
    age = current_year - year_of_birth
    result = "Quem nasceu no ano #{year_of_birth} tem #{age} anos em #{current_year}"
  elsif option == 0
    break
  else
    result = "Opção inválida"
  end

  system "clear"
end
