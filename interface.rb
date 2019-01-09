require_relative 'frequencies'

sentence = read_file('speech.txt')
word_frequencies = frequencies(sentence)
word_frequencies.values.sort

word_frequencies.each do |word, frequence|
  puts "'#{word}' is used #{frequence} times in the text"
end
