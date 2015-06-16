require_relative 'fibber'

class FileIo

  def create filename
    @file = File.new filename, 'w+'
  end

  def << input
    @file.write input
  end

  def output
    @file.rewind
    @file.readline
  end

  def fib quantity
    fibber = Fibber.generate quantity
    @file << quantity
  end
end
