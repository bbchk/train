=begin
def spin_words(string)
  return (string.split(" ").map { |word| word.reverse if word.length >= 5 }).join(" ")
end
=end

def spin_words(string)
  words = string.split(" ")
  rev_words = words.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  rev_words.join(" ")
end
