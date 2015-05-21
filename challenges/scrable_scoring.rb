# Level 1: Letter Scoring an Array
# Write code to output the score for the letters in an array like this:
#
# word = ['H', 'E', 'L', 'L', 'O']
#
# # Your code here
# Which, when run, outputs this:
#
# H has the value 4
# E has the value 1
# L has the value 1
# L has the value 1
# O has the value 1

scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}

new_lines = "\n\n"

word = ['H', 'E', 'L', 'L', 'O']

word.each do |key|
  puts "#{key} has the value #{scores[key]}"
end

puts new_lines
# Level 2: Scoring Letters in a String
#
# Write code to output the score for the letters in a string like this:
# word = "hello"
# Which, when run, outputs this:
#
# H has the value 4
# E has the value 1
# L has the value 1
# L has the value 1
# O has the value 1

word = "hello"

word.upcase.each_char do |char|
  puts "#{char} has the value #{scores[char]}"
end



# Level 3: Scoring an Entire String
#
# Write code to output the total score for a string like this:
# word = "hello"
#
# Which, when run, outputs this:
# hello has the total score
