# passando um parametro que pode ser ou não atribuido na chamada do metodo
def signal(color= "Verde")
  puts "O sinal está #{cor}"
end

signal

color= "vermelha"
signal(color)
