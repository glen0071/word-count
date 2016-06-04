class Phrase

  def initialize (words)
    @words = clean(words)
    @word_hash = {}
  end

  def word_count
    if @word_hash != {}
      @word_hash
    else
      find_word_count
    end
  end

  def clean(string_of_words)
    string_of_words.gsub(/\W/, ' ').downcase
  end

  def find_word_count
    @words.split.each do |word|
      if @word_hash.has_key?(word) == true
        @word_hash[word] += 1
      else
        @word_hash[word] = 1
      end
    end
    @word_hash
  end

end
