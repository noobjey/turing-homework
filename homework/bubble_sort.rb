# https://github.com/turingschool/challenges/blob/master/bubble_sort.markdown

# Challenge 1: Without Custom Classes
#
# Write an implementation of bubble sort that does not use any custom classes. You'll likely want to use methods and will surely needs arrays and a while loop.
#
# In addition to writing an implementation following the template below, answer the following questions:
#
# Given the numbers 0 through 5, what would be the worst case scenario for bubble sort (aka, what order would necessitate the most swaps)?
# answer: descending order
# How many swaps would that worst case take?
# answer: 10
# The example above took 21 iterations to get to a result. Can you tweak the algorithm so that it takes the same
# number of swaps (7) but fewer total operations?
# answer: continue parsing array after swap

require 'benchmark'


# jeffs o(n) class
sequence = []
30000.times { |num| sequence << num }

worst_case = sequence.reverse

# sequence   = [4, 3, 5, 0, 1]
# sequence = [5, 4, 3, 2, 1]

def sort(sequence)

  made_a_swap = true
  swaps       = 0
  loops       = 0

  def swap(counter, sequnce)
    temp                 = sequnce[counter]
    sequnce[counter]     = sequnce[counter + 1]
    sequnce[counter + 1] = temp
  end


  while made_a_swap do
    counter     = 0
    made_a_swap = false

    while counter < sequence.length - 1 #&& !made_a_swap

      if sequence[counter] > sequence[counter + 1]
        made_a_swap = true
        swaps       += 1
        swap(counter, sequence)
      end


      counter += 1
    end

    print "#{loops} " if loops % 1000 == 0
    loops += 1
  end

end

# result = sequence
# sequence[0] = sequence[1]
#
# puts "Final result: #{result}"
# puts "Swaps: #{swaps}"
# puts "Loops: #{loops}"

# puts worst_case.inspect

puts Benchmark.realtime {sort(worst_case)}

# puts worst_case.inspect
