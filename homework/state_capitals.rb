

states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

# # Level 1: Write some code which given a state name ("Oregon") outputs its capital ("Salem")
# name = "Oregon"
# puts capitals[states[name]]
#
# # Level 2: Handle the case when a state's information is not known by returning "Unknown"
# unknown_info = "Missouri"
# capital = capitals[states[unknown_info]]
#
# puts capital.nil? ? "Unknown" : capital

# Level 3: Now let's go the other way. Given a capital name ("Denver"), return the state name for which it is the capital ("Colorado")
capital = "Denver"

# puts states.invert[capitals.invert[capital]]

#answer from review in class
try_one = capitals.select{|key, value| value == capital}

puts states.invert[try_one.keys.first]

puts states.select{|key, value| value == try_one.keys.first}.keys.first

