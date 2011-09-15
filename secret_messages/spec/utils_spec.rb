require 'spec_helper'

describe Cipher::Utils do
  describe "#shift_letter" do
    context "shifting by positive number" do
      it "shifts letter by given number" do
        Cipher::Caesar.shift_letter('A', 2).should == 'C'
        Cipher::Caesar.shift_letter('Z', 3).should == 'C'
        Cipher::Caesar.shift_letter('Z', 26).should == 'Z'
      end
    end
    
    context "shifting by negative number" do
      it "shifts letter by given number" do
        Cipher::Caesar.shift_letter('B', -3).should == 'Y'
        Cipher::Caesar.shift_letter('Z', -100).should == 'D'
      end
    end
  end
end
