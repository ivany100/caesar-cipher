# A = 65, Z = 90
# a = 97, z = 122

def caesar_cipher(string, shift)
  shift %= 26

  chars_array = string.bytes
  shifted_string = ''

  chars_array.each do |char|
    shifted_char = char

    if 65 <= char && char <= 90
      shifted_char += shift
      shifted_char -= 26 if shifted_char > 90
    elsif 97 <= char && char <= 122
      shifted_char += shift
      shifted_char -= 26 if shifted_char > 122
    end

    shifted_string << shifted_char.chr
  end

  shifted_string
end

puts caesar_cipher('What a string!', 5)
