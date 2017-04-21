require "spec_helper"

RSpec.describe EpicAnagram do
  let(:string) { String.new('art').extend(EpicAnagram)}
  let(:array) { [].extend(EpicAnagram)}
  it "has a version number" do
    expect(EpicAnagram::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  describe 'EpicAnagram.find_anagrams' do
    it "does not run with non-string input" do
      expect {EpicAnagram.find_anagrams(123)}.to raise_error(ArgumentError)
    end

    it "returns an empty array for words that are not in the dictionary" do
      expect(EpicAnagram.find_anagrams('charp')).to match_array([])
    end

    it "returns an array of at least one word for a valid dictionary word" do
      expect(EpicAnagram.find_anagrams('alpha')).to match_array(['alpha'])
    end

    it "returns an array of all valid anagrams for a given word" do
      expect(EpicAnagram.find_anagrams('rat')).to match_array(['Art', 'art', 'rat', 'tar', 'tra'])
    end
  end

  describe 'EpicAnagram#is_anagram_of?' do
    it "does not work for non-string objects" do
      expect {array.is_anagram_of?('rat')}.to raise_error(ArgumentError)
    end

    it "returns a boolean when called on a string" do
      expect(string.is_anagram_of?('rat')).to(be(true).or(be(false)))
    end

    it "returns true if the input word is an anagram of the string" do
      expect(string.is_anagram_of?('rat')).to be(true)
    end

    it "returns false if the word is valid but not an anagram" do
      expect(string.is_anagram_of?('meow')).to be(false)
    end
  end

  describe 'EpicAnagram#anagrams' do
    it "does not work for non-string objects" do
      expect {array.anagrams()}.to raise_error(ArgumentError)
    end

    it "returns an array when called on a string" do
      expect(string.anagrams()).to be_a(Array)
    end

    it "returns an array of strings when called on a valid dictionary word" do
      expect(string.anagrams()).to(be_a(Array).and(all(be_a(String))))
    end

    it "returns an array of anagrams when called on a valid dictionary word" do
      expect(string.anagrams()).to match_array(['Art', 'art', 'rat', 'tar', 'tra'])
    end
  end
end
