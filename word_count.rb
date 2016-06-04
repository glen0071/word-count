class Phrase

  def initialize (words)
    @words = words
  end

  def word_count
    word_hash = Hash.new
    @words.split.each do |word|
      word_hash = { word => 1}
    end
    word_hash
  end

end


# Take in the phrase as parameter (at initialize)

# In word_count method
  # Create hashes_array to store word_hashes
  # split phrase into words_array
  # iterate over words_array
    # for each element


# create a word_hash for each word in phrase
# assign the word as string for key
# assign number of occurances for value

# each word_hash is one element of hashes_array
# Iterate over phrase
# for each word, check if already exists in array of hashes