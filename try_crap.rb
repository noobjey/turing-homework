people = [["Mile", 21, 0, "morshit"], ["jeff", 10, 1],["scott", 10, 2]]

people.map do |name, age, other, more|
  # puts person[0] + person[1].to_s
  puts name + age.to_s + other.to_s + more.class.to_s
end

