require 'minitest/autorun'
require 'minitest/pride'
require_relative 'file_io'


class FileIoTest < Minitest::Test
  def test_create_a_fib_text_file
    skip
    input    = 'fib.txt'
    expected = File

    file = FileIo.new
    file.create input

    result = File.open input, 'r'

    assert_equal expected, result
  end

  def test_write_to_file
    # skip
    file_name = 'fib.txt'
    input    = 'i should be in a file, its lonely out here'
    expected = input

    file = FileIo.new
    file.create file_name

    file << input
    result = file.output

    assert_equal expected, result
  end

  def test_write_one_fibber_value
    file_name = 'fib.txt'
    input    = 1
    expected = '0'

    file = FileIo.new
    file.create file_name

    file.fib input
    result = file.output

    assert_equal expected, result
  end


  def test_write_two_fibber_values
    skip
    file_name = 'fib.txt'
    input    = '2'
    expected = '0, 1'

    file = FileIo.new
    file.create file_name

    file.fib input
    result = file.output

    assert_equal expected, result
  end
end
