class Fish
  def method_missing(method_name)
    puts "Fish don't have #{method_name} behavior"
  end

  def swin
    puts "Fish is swinming"
  end
end

fish = Fish.new
fish.swin
fish.fly
