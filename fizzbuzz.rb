# You have most of the tools now to solve the well-known "fizzbuzz" challenge. It goes like this
# For the numbers 1 through 100...
#                               If the number is divisible by 3, print "fizz"
# If the number is divisible by 5, print "buzz"
# If the number is divisible by both 3 and 5, print "fizzbuzz"
# Otherwise print the number

fizz = "fizz"
buzz = "buzz"

def divisable_by_five(number)
  return number % 5 == 0
end

def divisable_by_three(number)
  return number % 3 == 0
end

(1..100).each do |number|
  if divisable_by_five(number) && divisable_by_three(number)
    puts fizz + buzz
  elsif divisable_by_five(number)
    puts buzz
  elsif  divisable_by_three(number)
    puts fizz
  else
    puts number
  end
end

