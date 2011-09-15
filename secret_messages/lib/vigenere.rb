require_relative 'utils'
module Cipher
  class Vigenere
    class << self
      include Utils
      def encrypt(text, key) 
        shift_text(text, key) {|code, shift| shift_letter(code, shift)}
      end
      
      def decrypt(text, key)
        shift_text(text, key) {|code, shift| shift_letter(code, -shift)}
      end
      
      private
      def shift_text(text, key)
        result = ""
        key_length = key.length
        index = 0
        text.each_char do |c|
          if c =~ /[a-zA-Z]/   
            result += yield(c, get_shift_value(key[index]))
            index = (index+1) % key_length
          else
            result += c
          end
        end
        result
      end
      def get_shift_value(letter)
        if letter.ord.between?(UPPER_START, UPPER_END) then return letter.ord - UPPER_START
        elsif letter.ord.between?(LOWER_START, LOWER_END) then return letter.ord - LOWER_START end
      end
    end
  end
end