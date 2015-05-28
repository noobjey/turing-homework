# https://github.com/turingschool/challenges/blob/master/bubble_sort.markdown

# Challenge 1: Without Custom Classes
#
# Write an implementation of bubble sort that does not use any custom classes. You'll likely want to use methods and will surely needs arrays and a while loop.
#
# In addition to writing an implementation following the template below, answer the following questions:
#
# Given the numbers 0 through 5, what would be the worst case scenario for bubble sort (aka, what order would necessitate the most swaps)?
# answer: reverse
# How many swaps would that worst case take?
# answer: no idea
# The example above took 21 iterations to get to a result. Can you tweak the algorithm so that it takes the same
# number of swaps (7) but fewer total operations?
# answer: do or do not i guess

sequence    = [4, 3, 5, 0, 1]
swaps       = 0
made_a_swap = true

while made_a_swap do
  start_over = false

  puts "outer loop"

  sequence.each_with_index do |value, index|
  puts "inner loop"
    if index < sequence.length - 1
      # puts "value: #{value}"
      # puts "index: #{index}"
      # puts "sequence: #{sequence.length}"

      if value > sequence[index + 1] && !start_over
        puts "before swap"
        puts "sequence[#{index + 1}] : #{sequence[index + 1]}"
        puts "sequence[#{index}] : #{sequence[index]}"
        puts "in the loop index[#{index}] - value[#{value}] - sequence[#{sequence}]"

        sequence[index]     = sequence[index + 1]
        sequence[index + 1] = value

        made_a_swap = true
        start_over  = true

        puts "after swap"
        puts "sequence[#{index}] : #{sequence[index]}"
        puts "sequence[#{index + 1}] : #{sequence[index + 1]}"
        puts "in the loop index[#{index}] - value[#{value}] - sequence[#{sequence}]"
      else
        made_a_swap = false
      end
    end

  end

end
result = sequence
# sequence[0] = sequence[1]
puts "Final result: #{result}"
puts "Swaps: #{swaps}"
