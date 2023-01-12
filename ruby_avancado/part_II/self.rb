# exemplo 1
# class Foo
#   attr_accessor :teste

#   def bar
#     puts self
#   end
# end

# foo = Foo.new
# puts foo
# foo.bar

# exemplo 2
# class Foo
#   def self.bar
#     puts self
#   end
# end
# # posso chamar o self sem instanciar a classe
# Foo.bar

# usando o self para acessar variaveis de instãncia de uma classe
class Pen
  attr_accessor :color
  def pen_color
    puts "The color is #{self.color}"
  end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color
pen.color
