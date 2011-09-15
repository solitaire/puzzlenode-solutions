require 'spec_helper'

describe Cipher::Vigenere do
  describe "#encrypt" do
    it "should encrypt a text with the specified key" do
      Cipher::Vigenere.encrypt(INPUT, KEY).should == OUTPUT
    end
  end
  
  describe "#decrypt" do
    it "should descrypt a text with the specified key" do
      Cipher::Vigenere.decrypt(OUTPUT, KEY).should == INPUT
    end
  end
end