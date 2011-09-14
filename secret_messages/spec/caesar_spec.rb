require 'spec_helper'

OUTPUT_TEXT = "FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV; WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH.
              Z. VKDNHVSHDUH, MXOLXV FDHVDU"

INPUT_TEXT = "COWARDS DIE MANY TIMES BEFORE THEIR DEATHS; THE VALIANT NEVER TASTE OF DEATH BUT ONCE.
              W. SHAKESPEARE, JULIUS CAESAR"
               
describe Cipher::Caesar do
  
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
  
  describe "#encrypt" do
    it "should encrypt a word with the given shift key" do
      Cipher::Caesar.encrypt("ABCDEF",22).should == "WXYZAB"
    end
    
    it "should encrypt a text with the given shift key" do
      Cipher::Caesar.encrypt(INPUT_TEXT, 3).should == OUTPUT_TEXT
    end
    
    it "should encrypt a lower-case word with the given key" do
      Cipher::Caesar.encrypt("abcdef",22).should == "WXYZAB"
    end
  end
  
  describe "#decrypt" do
    it "should decrypt a word with the given shift key" do
      Cipher::Caesar.decrypt("WXYZAB",22).should == "ABCDEF"
    end
    
    it "should decrypt a text with the given shift key" do
      Cipher::Caesar.decrypt(OUTPUT_TEXT, 3).should == INPUT_TEXT
    end
  end
end