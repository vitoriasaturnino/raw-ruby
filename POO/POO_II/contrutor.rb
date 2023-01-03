class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def check
    puts "Instância de classe iniciada com os valores: "
    puts "Name: #{@name}"
    puts "Age: #{@age}"
  end
end

person = Person.new("Vitória", 23)
person.check
