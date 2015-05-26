LAST_BOTTLE = 1
start_bottles = 9

until start_bottles == LAST_BOTTLE
  puts "#{start_bottles} bottles of beer on the wall, #{start_bottles} of beer, take one down pass it around "
  start_bottles -= 1
end

puts "1 bottle of beer on the wall"
