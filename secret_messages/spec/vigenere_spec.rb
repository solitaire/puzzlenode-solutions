require 'spec_helper'

INPUT_TEXT = "COWARDS DIE MANY TIMES BEFORE THEIR DEATHS; THE VALIANT NEVER TASTE OF DEATH 
BUT ONCE. OF ALL THE WONDERS THAT I YET HAVE HEARD, IT SEEMS TO ME MOST STRANGE 
THAT MEN SHOULD FEAR; SEEING THAT DEATH, A NECESSARY END, WILL COME WHEN 
IT WILL COME."

OUTPUT_TEXT = "IONDVQY DZH QNTY KLQRY BVISEK TYHME JERWLF; ZHV YEYOAEW RRBEI WEFZE FI HRGTY 
EYG UNTH. SS GLC WLR COEGIEY TYDX V EEK KEIK HVDVQ, OT JHIZY TF PI ZUSK VXEGNXH 
XUGT DHR FNOLOH SKAI; VIRONX WLNZ DVDXU, G NVFIFYAIB IAJ, WZOP PUMV ZLRT 
IK ZMYR CFPI."

KEY = "GARDEN"

describe Cipher::Vigenere do
  describe "#encrypt" do
    it "should encrypt a text with the specified key" do
      Cipher::Vigenere.encrypt(INPUT_TEXT, KEY).should == OUTPUT_TEXT
    end
  end
  
  describe "#decrypt" do
    it "should descrypt a text with the specified key" do
      Cipher::Vigenere.decrypt(OUTPUT_TEXT, KEY).should == INPUT_TEXT
    end
  end
end