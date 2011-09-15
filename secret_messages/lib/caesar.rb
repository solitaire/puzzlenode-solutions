require 'utils.rb'
module Cipher
  class Caesar
    class << self
      include Utils
      def encrypt(text, shift)
        encrypted_text = "" 
        text.each_char {|c| encrypted_text += shift_letter(c, shift)}   
        encrypted_text  
      end
      
      def decrypt(text, shift)
        encrypt(text, -shift)
      end
    end
  end
end