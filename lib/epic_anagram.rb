require "epic_anagram/version"
require "epic_anagram/anagram_dictionary"

module EpicAnagram
  def self.find_anagrams(word)
    @dict ||= EpicAnagram::AnagramDictionary.new
    @dict.anagrams(word)
  end
  
  def is_anagram_of?(word)
    anagrams.include?(word)
  end

  def anagrams()
    EpicAnagram.find_anagrams(self)
  end
end
