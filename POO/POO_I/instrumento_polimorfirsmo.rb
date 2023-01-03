class Instrumento
  def escrever
    print "Escrevendo"
  end
end

class Teclado < Instrumento
end

class Lapis < Instrumento
  def escrever
    puts "\nEscrevendo a lápis!"
  end
end

class Caneta < Instrumento
  def escrever
    super
    print "a caneta!"
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

teclado.escrever
lapis.escrever
caneta.escrever
