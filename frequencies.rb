def frequencies(string)
  hash_of_frequencies = {}

  filter_words(string).each do |word|
    word.downcase!
    if hash_of_frequencies[word]
      hash_of_frequencies[word] += 1
    else
      hash_of_frequencies[word] = 1
    end
  end
  hash_of_frequencies
end

def read_file(file_path)
  File.read(file_path).strip
end

def filter_words(string)
  string.split.delete_if do |word|
    word.length < 3 || USELESS_WORDS.include?(word)
  end
end

USELESS_WORDS = ['les', 'des', 'pour', 'est', 'dans', 'que', 'sur']
