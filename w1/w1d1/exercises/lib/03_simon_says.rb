def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n = 2)
  string_array = []
  n.times do
    string_array << string
  end
  string_array.join(' ')
end

def start_of_word(string, count)
  string[0..(count - 1)]
end
#
def first_word(string)
  string.split.first
end
#
# def titleize(string)
#   nocaps = ['and', 'the', 'over']
#   word_accumulator = []
#
#   is_first_word = true
#
#   string.split(" ").each do |word|
#     is_small_word = nocaps.include?(word)
#     if is_small_word && !is_first_word
#       word_accumulator << word
#     else
#       word_accumulator << word.capitalize
#     end
#     if is_first_word
#       is_first_word = false
#     end
#   end
#   return word_accumulator.join(' ')
# end

def titleize(string)
  nocaps = ['and', 'the', 'over']
  word_accumulator = []

  string.split(" ").each_with_index do |word, index|
    is_small_word = nocaps.include?(word)
    is_first_word = index == 0
    if is_small_word && !is_first_word
      word_accumulator << word
    else
      word_accumulator << word.capitalize
    end
  end
  return word_accumulator.join(' ')
end
