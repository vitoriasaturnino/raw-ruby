class Dog
  def read_name
    @name
  end

  def write_name= name
    @name = name
  end
end

dog = Dog.new
dog.write_name = "Smile"
puts dog.read_name

