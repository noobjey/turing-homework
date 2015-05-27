class ValidString
  def validate(string)
    # word.gsub(/[aeiou]/, '')
    only_braces = string.gsub(/[abcdefghijklmnopqrstuvwxyz]/, '')
    puts string
    puts only_braces

    while only_braces.length > 1 do
      return false unless matches?(only_braces[0], only_braces[only_braces.length - 1])
      only_braces = only_braces[only_braces[1], only_braces[only_braces.length - 2]]
    end
    true
  end

  def matches?(open_brace, close_brace)
    true
  end
end

valid = ValidString.new

puts valid.validate "aaa(bbb)ccc"
