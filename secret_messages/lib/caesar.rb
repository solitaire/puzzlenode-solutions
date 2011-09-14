module Cipher
  class Caesar
    class << self
      def encrypt(text, shift)
        encrypted_text = "" 
        text.each_char {|c| encrypted_text += shift_letter(c, shift)}   
        encrypted_text  
      end
      
      def decrypt(text, shift)
        encrypt(text, -shift)
      end
      
      def shift_letter(letter, shift)
        letter_code = letter.upcase
        return letter_code unless letter_code.between?('A', 'Z')
        shift = shift % 26
        letter_code = letter_code.ord + shift
        letter_code += 26 if letter_code < 65
        letter_code -= 26 if letter_code > 90
        letter_code.chr
      end
    end
  end
end