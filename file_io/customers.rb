require 'csv'

input = CSV.open 'customers.csv', headers: true, header_converters: :symbol

last_names = []

input.each do |line|
  last_names << line[:last_name]
end

last_names.sort.inspect

the_a = last_names.reduce {|last_name| last_name }

puts the_a.inspect
