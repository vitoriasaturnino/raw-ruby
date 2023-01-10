# in line
7.times {puts "a Vitória é inteligente"}
puts "-" * 40

# each in line
sum = 0
numbers = [9, 5, 3, 7]
numbers.each { |number| sum += number }
puts sum
puts "-" * 40

# each block
puts "TABUADA DO 2"
foo = { 1 => 2, 2 => 2, 3 => 2, 4 => 2, 5 => 2, 6 => 2, 7 => 2, 8 => 2, 9 => 2, 10 => 2}
foo.each do | key, value |
  puts "#{key} x #{value} = #{key * value}"
end
puts "-" * 40

def foo
  # chama o bloco
  yield
  yield
end
# não precisa ser in line
foo { puts "exec the block" }
puts "-" * 40

# passando opcionalmente o block
def bar
  if block_given?
    #chama o bloco
    yield
  else
    puts "sem parametros do tipo bloco"
  end
end
bar
bar { puts "com parametro do tipo bloco" }
puts "-" * 40

# passando bloco como paramento
def amora(name, &block)
  @name = name
  block.call
end
amora("Vitória") { puts "Hello #{@name}" }

# passando bloco com várias linhas como parametro
def laranja(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end
numbers = { 2 => 2, 3 => 3, 4 => 4 }
laranja(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
puts "-" * 40

