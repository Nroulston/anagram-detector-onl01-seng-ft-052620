require "pry"
class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end
  
  def match(array)
    @sorted_word = @word.chars.sort.join
    
    @words_hash = array.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort.join] += [word]
    end
    @matched_word = @words_hash.values_at(@sorted_word)
    @matched_word[0]
  end
    
end