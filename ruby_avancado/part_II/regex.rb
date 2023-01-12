# criando regex no irb
# 1
/vitoria/
/vitoria/.class
# => Regexp
# 2
%r{vitoria}
%r{vitoria}.class
# => Regexp
# 3
Regexp.new('vitoria')
Regexp.new('vitoria').class
# => Regexp

#<MatchData #<MatchData

# econtrando valores em uma string com regex
/Sat/ =~ "Vitória Cristina Saturnino de Moura"
# => 17

# Metodo match
phrase = "Hellow, how are you?"
match_data = /how/.match(phrase)
match_data.pre_match
match_data.post_match

# para buscar caracter especial usar |
/\?/.match('Tudo bem?')

# character classes
/[t]exto/.match('texto começando com t')

/[1-5]/.match('123')
# => #<MatchData "1">
/[4-5]/.match('123')
# => nil

/[a-z]/.match('oi')
# => #<MatchData "o">

# para pegar números em strings
/[0-9]/.match('B3')
/[\d]/.match('B3')
/A\d/.match('A7')

# buscando o mesmo padrão mais de uma vez
# telefone
/[0-9]{2} [0-9]{9}/.match('12 987457432')
# CPF
/\d{3}.\d{3}.\d{3}-\d{2}/.match('598.653.147-32')
