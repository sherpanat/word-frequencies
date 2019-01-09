def frequencies(string)
  hash_of_frequencies = {}
  string.split.each do |word|
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
