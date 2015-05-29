# people = [["Mile", 21, 0, "morshit"], ["jeff", 10, 1],["scott", 10, 2]]
#
# people.map do |name, age, other, more|
#   # puts person[0] + person[1].to_s
#   puts name + age.to_s + other.to_s + more.class.to_s
# end
#

# 5/29 Mike on Scope in class crap
class PizzaOven
  def cook(temp = temp, crust = crust)
    puts "cookin #{crust} at #{temp}"
  end

  def temp
    "400 F"
  end

  def crust
    "ny style"
  end
end

oven = PizzaOven.new
# oven.cook(oven.temp, oven.crust)
# print oven
oven.cook()
