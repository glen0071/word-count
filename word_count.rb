class Phrase

  def initialize (string_of_words)
    @string_of_words = string_of_words
    @word_array = []
    @word_hash = {}
  end

  def word_count
    if @word_hash != {}
      @word_hash
    else
      prepare_word_array
      find_word_count
    end
  end

  def prepare_word_array
    temp_array = @string_of_words.gsub(/[^'\w\d]/, ' ').downcase.split
    @word_array = temp_array.map do |word|
      if word.match(/[\A']\w+[\z']/)
        word.delete("'")
      else
        word
      end
    end
  end

  def find_word_count
    @word_array.each do |word|
      if @word_hash.has_key?(word) == true
        @word_hash[word] += 1
      else
        @word_hash[word] = 1
      end
    end
    @word_hash
  end

end

class BookKeeping
  VERSION = 1
end
