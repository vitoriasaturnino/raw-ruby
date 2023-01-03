# Sobre Herança
class Animal
  def pular
    puts "Toing! tóim! bóim! póim!"
  end

  def dormir
    puts "Zzzzz"
  end
end

class Cachorro < Animal
  def latir
    puts "Au Au"
  end
end

class Gato < Animal
  def miar
    puts "meow meow"
  end
end

cachorro = Cachorro.new
cachorro.latir
cachorro.pular

gato = Gato.new
gato.miar
gato.dormir
