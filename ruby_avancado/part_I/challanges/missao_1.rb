require 'capitalize_names'

to_upercase = lambda do |name|
  puts CapitalizeNames.capitalize(name)
  puts "-" * 40
end

to_upercase.call("vitória")
to_upercase.call("raphael")
