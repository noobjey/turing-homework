class CharacterCounter
  def initialize string = ''
    @string             = string
    @counted_characters = Hash.new
  end

  def validate string
    # puts "****#{string.class}"
    string.is_a? String
  end

  def occurances character
    @string.count character
  end

  def store character
    @counted_characters[character] = occurances character
    @counted_characters
  end

  def count string
    string.each_char do |character|
      store character
    end
    @counted_characters
  end

end
