require "cpf_cnpj"

puts "---------------------------------------"
puts "             CPF CHALLENGE             "
puts "---------------------------------------"

print "Insira seu CPF: "
cpf = gets.chomp

def is_valid(cpf)
  puts "\nvalidando ..."

  cpf = CPF.new(cpf)

  if CPF.valid?(cpf)
    puts "\nO CPF #{cpf.formatted} é válido"
  else
    puts "\nO CPF #{cpf.formatted} não é válido"
  end
end

is_valid(cpf)
