text = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
puts text
puts "Sim, seu Whatsapp é #{/\(\d{2}\)\s\d\s\d{4}-\d{4}/.match(text)}"
