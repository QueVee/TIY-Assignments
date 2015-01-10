# I want a method that will convert integers into their Roman numeral representation.
# For example:
# 3.to_roman => "III"
# 15.to_roman => "XV"

class Fixnum

  def to_roman
    if self == 0
      ""
    
    elsif self <= 3
      "I" * self
    elsif self == 4
      "IV"
    elsif self <= 8
      "V" + (self - 5).to_roman
    elsif self == 9
      "IX"
    elsif self < 40
      "X" + (self - 10).to_roman
    elsif self < 50
      "XL" + (self - 40).to_roman 
    elsif self < 90 
      "L" + (self - 50).to_roman
    elsif self < 100 
      "XC" + (self - 90).to_roman
    elsif self < 400 
      "C" + (self - 100).to_roman
    elsif self < 500 
      "CD" + (self - 400).to_roman
    elsif self < 900 
      "D" + (self - 500).to_roman
    elsif self < 1000 
      "CM" + (self - 900).to_roman
    else self < 1400 
      "M" + (self - 1000).to_roman  
    end
  end
end

def test(actual_value, expectation)
  if actual_value == expectation
    puts "success"
  else
    puts "expected #{expectation} but got #{actual_value}"
  end
end

test 2015.to_roman, "MMXV"
