# Part 2: Experimenting with Dependencies
#
# Read a part of Chapter 3, pages 35 through 42 up to "Isolate Dependencies".
#
#Then, let's do an experiment with dependency injection. Check out this usage:
#

class Fibber

  def initialize(printer)
    @printer = printer
  end

  def generate(quantity)
    if (quantity.is_a? String) || (quantity < 1)
      0
    elsif quantity < 3
      1
    else
      generate(quantity - 1) + generate(quantity - 2)
    end
  end

  def all_fib_up_to(quantity)
    all_fibs = (0..quantity).map do |number|
      generate(number)
    end
    all_fibs
  end

  def print(quantity)
    all_fib_up_to(quantity).each do |number|
      @printer.print(number)
    end
  end
end

class ScreenPrinter
  def print(value)
    printf "#{value} "
  end
end

class FilePrinter
  def initialize(file_name)
    @file_name = file_name
    @file = File.open file_name, 'w+'
  end

  def print(value)
    @file.write "#{value} "
  end
end


screen_printer = ScreenPrinter.new
fibber = Fibber.new(screen_printer)
fibber.print(10) # => prints the first 10 numbers of the fibonacci sequence to
#                  #    the screen separated by a single space
file_printer = FilePrinter.new("output.txt")
fibber = Fibber.new(file_printer)
fibber.print(10) # => prints the first 10 number of the fibonacci sequence to
#                  #    a file named 'output.txt' separated by a single space
# Build Fibber, ScreenPrinter, and FilePrinter classes to make that work.
