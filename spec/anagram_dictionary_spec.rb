require "epic_anagram"

RSpec.describe EpicAnagram::AnagramDictionary do
  let(:dict) { EpicAnagram::AnagramDictionary.new}

  describe 'AnagramDictionary#load_dictionary' do
    it 'creates an instance variable on the object' do
      expect(dict.load_dictionary()).to be_a(Hash)
      expect(defined? dict.words)
    end
  end

  describe 'AnagramDictionary#anagrams' do
    it "does not run with non-string input" do
      expect {dict.anagrams(123)}.to raise_error(ArgumentError)
    end

    it "returns an empty array for words that are not in the dictionary" do
      expect(dict.anagrams('charp')).to match_array([])
    end

    it "returns an array of at least one word for a valid dictionary word" do
      expect(dict.anagrams('alpha')).to match_array(['alpha'])
    end

    it "returns an array of all valid anagrams for a given word" do
      expect(dict.anagrams('rat')).to match_array(['Art', 'art', 'rat', 'tar', 'tra'])
    end
  end

  describe 'AnagramDictionary#word_exists?' do
    it 'returns a true or false value when called' do
      expect(dict.word_exists?('star')).to(eq(true).or(eq(false)))
    end

    it 'returns true if the word exists' do
      expect(dict.word_exists?('star')).to(eq(true))
    end

    it 'returns false if the word does not exist' do
      expect(dict.word_exists?('blarp')).to(eq(false))
    end
  end
end