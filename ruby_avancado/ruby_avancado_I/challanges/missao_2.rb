module Person
  class Juridc

    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts "-" * 40
      puts "Pessoa Jurídica Adicionada"
      puts "Nome: #{@name}"
      puts "CNPJ: #{@cnpj}"
      puts "-" * 40
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "-" * 40
      puts "Pessoa Física Adicionada"
      puts "Nome: #{@name}"
      puts "CPF: #{@cpf}"
      puts "-" * 40
    end
  end
end

person_juridic = Person::Juridc.new("Cabeleleleira Leila", "4568.562/0001-82").add
person_physical = Person::Physical.new("Verônica Moura", "499.4798.632.02").add
