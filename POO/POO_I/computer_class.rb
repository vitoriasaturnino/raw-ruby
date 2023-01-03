# omo definir uma classe e seus métodos
class Computer
  def turn_on
    "turn on the computer"
  end

  def shutdown
    "turn shutdown the computer"
  end
end

computer = Computer.new
puts computer.turn_on
puts computer.shutdown
