require 'spec_helper'

describe Kata::Kyu7 do
  it 'Binary result of addition' do
    Kata::Kyu7.binary_addition(1, 1).must_equal('10')
    Kata::Kyu7.binary_addition(0, 1).must_equal('1')
    Kata::Kyu7.binary_addition(1, 0).must_equal('1')
    Kata::Kyu7.binary_addition(2, 2).must_equal('100')
    Kata::Kyu7.binary_addition(5, 9).must_equal('1110')
    Kata::Kyu7.binary_addition(51, 12).must_equal('111111')
    Kata::Kyu7.binary_addition(100, 100).must_equal('11001000')
  end
end
