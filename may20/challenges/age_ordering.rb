data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

# # Level 1
# sorted_by_age = data.sort_by do |name, age|
#  age
# end
#

# sorted_by_age.each do |name, age|
#   puts name
# end
#
#
# # Level 2
# data.each do |name, age|
#   puts "#{name} (#{age})"
# end

# Level 3
# data << ["Fronk", 33]
# sorted_by_age_name = data.sort_by { |element| [element[1], element[0]] }
#
# puts sorted_by_age_name.inspect

# Level 4: Write code to automatically build a hash with the age as the key and an array of names as the value (all the people who are that age). e.g. {24 => ['Juan', 'Steve', 'Jill']...}
hash = Hash.new

data.each do |name, age|

  if hash.has_key? age

    if !hash[age].is_a? Array
      hash[age] = [hash[age]]
    end

    hash[age] << name

  else
    hash[age] = name
  end

end

puts hash.inspect
