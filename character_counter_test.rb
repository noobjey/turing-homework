# # analyze aaabbc
# read in a string of characters
# read a character

# count all occurances of character
#   if it is the first occurance
#     add charater to seen characters
#       character count is one
#     if it is not first occurance
#       add to the character count
# make sure it counts spaces
# alternate add to output here instead of in if
# do that until all characters have been read

# format the results to be in desending order by charater count (most pop char first)
# output the results

require 'minitest/autorun'
require 'minitest/pride'
require_relative 'character_counter'

class CharacterCounterTest < Minitest::Test

  def test_string_is_valid_input
    input    = 'aaabbc'
    expected = true
    counter  = CharacterCounter.new

    result = counter.validate input

    assert_equal expected, result
  end

  def test_array_is_invalid
    input    = 'aaabbc'.chars
    expected = false
    counter  = CharacterCounter.new

    result = counter.validate input

    assert_equal expected, result
  end

  def test_find_charater_occurances
    string   = 'aaabbc'
    input    = 'b'
    expected = 2
    counter  = CharacterCounter.new string

    result = counter.occurances input

    assert_equal expected, result
  end

  def test_find_charater_occurance_when_spaces
    string   = 'aa a bbc '
    input    = ' '
    expected = 3
    counter  = CharacterCounter.new string

    result = counter.occurances input

    assert_equal expected, result
  end

  def test_add_occurance_to_output_when_one_character
    string   = 'a'
    input    = 'a'
    expected = { 'a' => 1 }
    counter  = CharacterCounter.new input

    result = counter.store 'a'

    assert_equal expected, result
  end

  def test_add_all_occurances_to_output_when_multiple_character
    input    = 'aaa'
    expected = { 'a' => 3 }
    counter  = CharacterCounter.new input

    result = counter.store 'a'

    assert_equal expected, result
  end

  def test_add_each_charater_in_string
    input    = 'abaa'
    expected = { 'a' => 3, 'b' => 1 }
    counter  = CharacterCounter.new input

    result = counter.count

    assert_equal expected, result
  end

  def test_sort_output_in_decending_order_by_character_count
    input    = 'baaa'
    expected = { 'a' => 3, 'b' => 1 }
    counter  = CharacterCounter.new input

    result = counter.by_most_popular

    assert_equal expected, result
  end

  def test_output_top_5
    input    = 'baaacdcccbkkeeeeetrr'
    expected = { 'e' => 5, 'c' => 4, 'a' => 3,  'k' => 2, 'b' => 2 }
    counter  = CharacterCounter.new input

    result = counter.top_five

    assert_equal expected, result
  end

  def test_output_top_5_does_not_count_spaces
    input    = 'ba     aac dcccb kkeeeee trr'
    expected = { 'e' => 5, 'c' => 4, 'a' => 3,  'k' => 2, 'b' => 2 }
    counter  = CharacterCounter.new input

    result = counter.top_five

    assert_equal expected, result
  end



  # def test_print_formated_output
  #   input    = { a: 3, b: 1 }
  #   expected = "a: 3/nb: 1"
  #   counter  = CharacterCounter.new string
  #
  #   result = counter.print input
  #
  #   assert_equal expected, result
  # end
end










