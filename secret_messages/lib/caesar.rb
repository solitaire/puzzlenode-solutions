module Cipher
  class Caesar
    class << self
      def encrypt(text, shift)
              
      end
      
      def decrypt(text, shift)
        
      end
      
      def shift_letter(letter, shift)
        shift = shift % 26
        letter_code = letter.upcase
        letter_code = letter.ord + shift
        letter_code += 26 if letter_code < 65
        letter_code -= 26 if letter_code > 90
        letter_code.chr
      end
    end
  end
end