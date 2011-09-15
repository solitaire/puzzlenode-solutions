require_relative 'lib/secret_message.rb'


secret_message = SecretMessage.new("#{File.dirname(__FILE__)}/lib/complex_cipher.txt")
puts secret_message.decrypt
