require 'alphabet.rb'
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
        shift = shift % 26
        letter_code = letter.ord + shift
        if letter.ord.between?(UPPER_START, UPPER_END) then check_range(letter_code, UPPER_START, UPPER_END)
        elsif letter.ord.between?(LOWER_START, LOWER_END) then check_range(letter_code, LOWER_START, LOWER_END)
        else letter end
      end
      
      private
      def check_range(letter_code, first, last)
        letter_code += 26 if letter_code < first
        letter_code -= 26 if letter_code > last
        letter_code.chr
      end
    end
  end
end