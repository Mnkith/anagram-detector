
class Anagram
  
  def initialize(word)
    @word = word
  end

  attr_accessor :word

  def match(list)
    matches = []
    sorted_word_letters = @word.split('').sort
    list.each do | item |
      matches << item if item.split('').sort == sorted_word_letters
    end
    matches
  end
end