options = [1, 2, 3, 4, 5, 0]

loop do
  puts "\n------------------------------------"
  puts "            CALCULADORA             "
  puts "------------------------------------"
  puts "selecione uma das opções: "
  puts "1 - SOMA"
  puts "2 - SUBTRAÇÃO"
  puts "3 - MULTIPLICAÇÃO"
  puts "4 - DIVISÃO"
  puts "5 - MODULO"
  puts "0 - Sair"
  puts "------------------------------------"
  print "opção: "

  get_option = gets.chomp.to_i

  system "clear"

  if get_option == 0
    break
  elsif options.include?(get_option)
    print "Digite o primeiro número: "
    number_1 = gets.chomp.to_i
    print "Digite o segundo número: "
    number_2 = gets.chomp.to_i

    case get_option
    when 1
      puts "\nsomando..."
      result = number_1 + number_2
    when 2
      puts "\nsubtraindo..."
      result = number_1 - number_2
    when 3
      puts "\nmultiplicando..."
      result = number_1 * number_2
    when 4
      puts "\ndividindo..."
      result = number_1 / number_2
    when 5
      puts "\ndividindo..."
      result = number_1 % number_2
    end

    puts "\nO resultado é igual a #{result}"
  else
    puts "digite uma opção válida x_x"
  end
end
