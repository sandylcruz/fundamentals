# def reverser(&prc)
#   string = prc.call
#   words = string.split(' ')
#   accumulator = []
#
#   words.each do |word|
#     accumulator << word.reverse
#   end
#
#   accumulator.join(' ')
# end

def reverser(&prc)
  string = prc.call
  words = string.split(' ')

  reverse_array = words.map do |word|
    word.reverse
  end

  reverse_array.join(' ')

end


def adder(surplus = 1, &prc)
  prc.call + surplus
end

def repeater(times = 1, &prc)
  prc.call
end
