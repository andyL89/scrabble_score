class Word
  def initialize(word)
    @word = word
  end
  def scrabble
    score_system = {
      "one" => %w(a e i o u l n s t),
      "two" => %w(d g),
      "three" => %w(b c m p),
      "four" => %w(f h v w y)
    }
    score = 0
    @word.each_char() do |letter|
      if score_system.fetch("one").include?(letter)
        score = score + 1
      elsif score_system.fetch("two").include?(letter)
        score = score + 2
      elsif score_system.fetch("three").include?(letter)
        score = score + 3
      else score_system.fetch("four").include?(letter)
        score = score + 4
      end
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