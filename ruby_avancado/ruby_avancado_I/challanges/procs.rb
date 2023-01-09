# maneiras de definir uma proc
multiply = Proc.new{ |number| number * 5 }
multiply = proc { |number| number * 5 }

# lambda
multiply = lambda { |number| number * 5 }
multiply = -> { number * 5 }

# método para repetição
def rep_a(n)
  n.times { yield } if block_given?
end
rep_a(3) { puts "Bons estudos" }
puts "-" * 40

# método similar
# o sinal de & que é utilizado ao passar o block como argumento do método transforma ele em uma proc
def rep_b(n, &block)
  p block.class
  puts "-" * 40
  n.times { block.call } if block
end
rep_b(5) { puts "Vocẽ vai longe" }
puts "-" * 40

# A DIFERENÇA ENTRE PROC E LAMBDA exemplos práticos
# a primeira diferença é o número de argumentos que cada um suporta

teste_proc_1 = Proc.new { |a, b, c| a + b + c }
teste_proc_2 = proc { |a, b, c| a + b + c }
teste_lambda = lambda { |a, b, c| a + b + c }

puts "-" * 40
puts "Número correto de argumentos {3 argumentos}"
puts "teste_proc_1 => #{teste_proc_1.call(1, 2, 3)}"
puts "teste_proc_2 => #{teste_proc_2.call(1, 2, 3)}"
puts "teste_lambda => #{teste_lambda.call(1, 2, 3)}"
puts "-" * 40

# se eu deixar de passar algum argumento o proc cria um di tipo nil
# neste caso isso me gera um TypeError pois não é possivel somar dois interios e um valor do tipo nil
puts "Número correto de argumentos {2 argumentos}"
puts "teste_proc_1 => #{teste_proc_1.call(1, 2)}"
puts "teste_proc_2 => #{teste_proc_2.call(1, 2)}"
puts "teste_lambda => #{teste_lambda.call(1, 2)}"
puts "-" * 40

# no caso de argumentos a mais argumentos do que é necessário
puts "Número correto de argumentos {4 argumentos}"
# no caso das procs o argumento que sobra é descartado
puts "teste_proc_1 => #{teste_proc_1.call(1, 2, 3, 4)}"
puts "teste_proc_2 => #{teste_proc_2.call(1, 2, 3, 4)}"
# no caso da lambda o ruby me reorna o erro " wrong number of arguments"
puts "teste_lambda => #{teste_lambda.call(1, 2, 3, 4)}"
puts "-" * 40

# OUTRA DIFERENÇA É QUANTO AO RETURN DENTRO DE UM MÉTODO
#  o processamento com o lambda (mesmo que seu conteúdo seja um return) continua
def metodo_com_lambda
  _lambda = lambda { return "Resposta de um lambda" }
  _lambda.call
  return "Resposta do método"
end
puts metodo_com_lambda
puts "-" * 40

# a partir do momento em que eu chamo a proc o seu return para o processamento e imprime a saida
def metodo_com_proc
  _proc = proc { return "Resposta de uma proc "}
  _proc.call
  return "Resposta do método"
end
puts metodo_com_proc
puts "-" * 40

# Mais sobre blocks, procs e lambda
# https://imasters.com.br/back-end/entendendo-blocks-procs-e-lambdas-no-ruby#:~:text=No%20Ruby%2C%20Procs%20s%C3%A3o%20trechos,n%C3%A3o%20substituir%20os%20m%C3%A9todos%20return.
