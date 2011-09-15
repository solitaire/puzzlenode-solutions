module Cipher
  UPPER_START = 'A'.ord
  UPPER_END = 'Z'.ord
  LOWER_START = 'a'.ord
  LOWER_END = 'z'.ord
  
  module Utils
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