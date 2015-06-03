class CharacterCounter
  def initialize string = ''
    @string             = string
    @counted_characters = Hash.new
  end

  def validate string
    string.is_a? String
  end

  def occurances character
    @string.count character
  end

  def store character
    @counted_characters[character] = self.occurances character
    @counted_characters
  end

  def count
    while !@string.empty? do
      character = @string[0]

      self.store character
      @string.delete! character
    end
    @counted_characters
  end

  def by_most_popular
    count
    sorted_hash = @counted_characters.sort_by { |k, v| v }.last(5).reverse.to_h
    sorted_hash
  end

  def top_five
    @string.delete! ' '
    result = by_most_popular
    result
  end
end
