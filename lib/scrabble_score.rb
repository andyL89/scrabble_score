class Word
  def initialize(word)
    @word = word
  end
  def scrabble()
    one_point = %w(a e i o u l n s t)
    score = 0
    @word.each_char() do |letter|
      one_point.include?(letter)
      score = score + 1
    end
    binding.pry
    return score
  end
end






# word1 = Word.new("a")
# puts word1.scrabble()

#   def characters
#     @characters
#   end
# end

# def scrabble
#   one_point = ["a"]
#   score = 0
#   one_point.each do |array_element|
#     if one_point.include?("a")
#       score = score + 1
#     end
#   end
# end