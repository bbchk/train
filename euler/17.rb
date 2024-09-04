require 'humanize'

def count_letters_in_words(number)
  words = number.humanize
  words.gsub!(/[^a-z]/, '')  # Removes spaces and hyphens
  words.length
end

total_letters = 0
(1..1000).each do |num|
  total_letters += count_letters_in_words(num)
end


puts total_letters
