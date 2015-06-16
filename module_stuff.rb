module RWD
  class Car
    def start
      puts "Engine on!"
    end

    def drive
      puts "Back wheels go!"
    end
  end
end

module AWD
  class Car
    def start
      puts "Engine on!"
    end

    def drive
      puts "All wheels go!"
    end
  end
end

AWD::Car.new.drive
RWD::Car.new.drive

module Pythagorean
  def self.find_c(a, b)
    Math.sqrt((a ** 2) + (b ** 2))
  end

  def self.find_a(b, c)
    Math.sqrt(c**2 - b**2)
  end

  def self.find_b(a, c)
    self.find_a(a, c)
  end
end

puts Pythagorean.find_b(3,5)



module HasEngine
  def start
    puts "Engine on!"
  end

  def stop
    puts "Engine on!"
  end
end

# turn the AC on (Chilly air coming your way!) or off (Temp is fine in here).
module HasAirConditioning
  def on
    puts 'Chilly air coming your way!'
  end

  def off
    puts 'Temp is fine in here'
  end
end

class Camry
  include HasEngine
  include HasAirConditioning

  def drive
    puts "Back wheels go!"
  end
end

class Jeep
  include HasEngine
  include HasAirConditioning

  def drive
    puts "All wheels go!"
  end
end

puts Camry.new.start
puts Camry.new.on

puts Jeep.new.stop
puts Jeep.new.off
