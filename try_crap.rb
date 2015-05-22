people = [["Mile", 21, 0] ["jeff", 10, 1],["scott", 10, 2]]

people.map do |name, age, other|
  # puts person[0] + person[1].to_s
  puts name + age.to_s + other.to_s
end

