puts 'text:'
text = gets.chomp

puts 'key:'
key = gets.chomp.to_i

def caesar_cipher(text, key)
  lower_alphabet = ('a'..'z').to_a
  upper_alphabet = ('A'..'Z').to_a
  lower_key = Hash[lower_alphabet.zip(lower_alphabet.rotate(key))]
  upper_key = Hash[upper_alphabet.zip(upper_alphabet.rotate(key))]

  text.each_char.inject('') do |newtext, char|
    if lower_key[char]
      newtext + lower_key[char]
    elsif upper_key[char]
      newtext + upper_key[char]
    else
      newtext + char
    end
  end
end

puts caesar_cipher(text, key)
