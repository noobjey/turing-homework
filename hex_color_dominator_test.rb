require 'minitest/autorun'
require 'minitest/pride'

class HexColorDominatorTest < Minitest::Test

  def test_seperates
    input = 'FF3455'
    dominator = HexColorDominator.new(input)

    assert dominator.colors
  end
end

class HexColorDominator

end
