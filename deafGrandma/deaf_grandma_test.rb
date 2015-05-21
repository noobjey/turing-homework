require "minitest"
require_relative "deaf_grandma"

class DeafGrandmaTest < Minitest::Test

#acceptance
  def test_acceptance

    assert_equal grandma = DeafGrandma.new, "WHAT?"

    assert_equal grandma.speak_to(""), "WHAT?!"

  end


# If you ask a question with any lower-case letters, she responds with SPEAK UP, KID!
  def test_grandma_responds_when_you_say_anything_in_lowercase
    grandma = DeafGrandma.new
    lower_case_talk = "hI GrandMa"

    assert_equal grandma.speak_to(lower_case_talk), "SPEAK UP, KID!"
  end


# If you ask a question in all upper-case letters, she responds with NO, NOT SINCE 1946!
  def test_grandma_responds_when_you_say_anything_in_all_uppercase
    grandma = DeafGrandma.new
    all_upper_case_talk = "WHAT UP AHOLE"

    assert_equal grandma.speak_to(all_upper_case_talk), "NO, NOT SINCE 1946!"
  end

# The first time you say GOODBYE! she says LEAVING SO SOON?
  def test_grandma_responds_to_first_goodbye
    grandma = DeafGrandma.new

    assert_equal grandma.speak_to("GOODBYE!"), "LEAVING SO SOON?"
  end


# The second time you say GOODBYE! she says LATER, SKATER! and the program exits
  def test_grandma_responds_to_second_goodbye
    grandma = DeafGrandma.new

    assert_equal grandma.speak_to("GOODBYE!"), "LATER, SKATER!"
# => program exits
    assert grandma.nil?

  end




end

