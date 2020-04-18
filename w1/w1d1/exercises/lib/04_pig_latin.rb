def translate_word(word)
  consonant_count = consonant_prefix_count(word)

  prefix = word[consonant_count..-1]
  suffix = word[0...consonant_count] + "ay"
  prefix + suffix
end

def translate(word)
  new_words = []
       
  word.split(' ').each do |word|
    new_words << translate_word(word)
  end

  new_words.join(' ')
end

VOWELS = ['a', 'e', 'i', 'o', 'u']

def is_vowel?(character)
  VOWELS.include? character
end

def consonant_prefix_count(word)
  consonant_count = 0

  while consonant_count < word.length
    current_character = word[consonant_count]

    if is_vowel?(current_character)
      if current_character == 'u' && word[consonant_count - 1] == 'q'
        consonant_count += 1
      end
      break
    end
    consonant_count += 1
  end

  consonant_count
end
