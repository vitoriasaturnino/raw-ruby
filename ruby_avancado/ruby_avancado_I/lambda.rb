#  guardando o lambda em uma varialvel
first_lambda = lambda { puts "my first lambda" }
first_lambda.call
puts "-" * 40

# o exemplo acima poderia ser escrito como abaixo, usando -> para indicar a criação de uma lambda
first_lambda = -> { puts "my second lambda" }
first_lambda.call
puts "-" * 40

# passando parametros para lambda
my_lambda = -> (names) { names.each { | name | puts name} }
names = ["Vitória", "Verônica", "Rose"]
my_lambda.call(names)
puts "-" * 40

# criando lambda com várias linhas (dessa forma não se pode usar ->)
my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]}) = #{numbers[index] + numbers[index + 1]}"
    index += 1
  end
end
numbers = [1, 2, 3, 8]
my_lambda.call(numbers)
puts "-" * 40

# passando lambda como argumento em um metodo
def foo(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end

first_lambda = lambda { puts "my first lambda"}
second_lambda = lambda { puts "my second lambda"}

foo(first_lambda, second_lambda)
puts "-" * 40
