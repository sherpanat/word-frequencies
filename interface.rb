require_relative 'frequencies'

sentence = read_file('speech.txt')
word_frequencies = frequencies(sentence)
ordered_frequencies = word_frequencies.sort_by{|key, value| value}.reverse

ordered_frequencies.first(10).each do |frequence|
  puts "'#{frequence[0]}' is used #{frequence[1]} times in the text"
end

# word_frequencies.each do |word, frequence|
#   puts "'#{word}' is used #{frequence} times in the text"
# end
