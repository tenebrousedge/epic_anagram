module EpicAnagram
  class AnagramDictionary

    attr_accessor :words

    def initialize
      @words = load_dictionary
    end

    def load_dictionary
      words = Hash.new {|hash, key| hash[key] = [] }
      File.open("/usr/share/dict/words", 'r').each_line do |word|
      	words[word.chomp.downcase.chars.sort.join] << word.chomp
      end
      words
    end

    def anagrams(word)
      word_exists?(word) ? @words[word.downcase.chars.sort.join] : []
    end

    def word_exists?(word)
      if !word.is_a?(String) 
        raise ArgumentError, "Dictionary received %s, expected String"%word.class.name.split('::').last
      end
      @words.fetch(word.downcase.chars.sort.join, []).include?(word.downcase)
    end
  end
end