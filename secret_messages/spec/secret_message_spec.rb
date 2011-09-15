require 'spec_helper'

describe SecretMessage do  
    it "should decrypt the secret message" do
      @secret_message = SecretMessage.new("#{File.dirname(__FILE__)}/complex_cipher_test.txt")
      @secret_message.decrypt.should == INPUT
    end
end
