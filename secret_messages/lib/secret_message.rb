require 'set'
require "#{File.dirname(__FILE__)}/caesar"
require "#{File.dirname(__FILE__)}/vigenere"


class SecretMessage
  def initialize(message_file)
    @file = message_file
    @dictionary = read_dictionary
  end
  
  def decrypt
    encrypted_key, encrypted_text = read_message(@file)
    key = decrypt_secret_key(encrypted_key)
    text = Cipher::Vigenere.decrypt(encrypted_text, key)
  end
  
  private 
  def read_dictionary
    dictionary = Set.new
    File.open("#{File.dirname(__FILE__)}/dictionary.txt") do |line|
      line.each {|word| dictionary.add(word.chomp)}
    end
    dictionary
  end
  
  def read_message(file)
    message = File.readlines(file)
    key = message.first.chomp
    text = message[2..-1].join
    [key, text]
  end
  
  def decrypt_secret_key(key)
    (0..25).each do |shift|
      decrypted_key = Cipher::Caesar.decrypt(key, shift)
      return decrypted_key if @dictionary.include?(decrypted_key.downcase)
    end
  end
end