class User
  def add(name)
    @name = name
    puts "User adicionado!"
    hello
  end

  def hello
    puts "Seja bem vindo(a) #{@name}!"
  end
end

user = User.new
user.add("Raphael")

user_2 = User.new
user_2.add("Rose")

