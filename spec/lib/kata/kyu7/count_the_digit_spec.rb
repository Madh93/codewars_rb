require 'spec_helper'

describe Kata::Kyu7 do
  it 'Squares with specifc digit' do
    Kata::Kyu7.count_the_digit(5750, 0).must_equal(4700)
    Kata::Kyu7.count_the_digit(11011, 2).must_equal(9481)
    Kata::Kyu7.count_the_digit(12224, 8).must_equal(7733)
    Kata::Kyu7.count_the_digit(11549, 1).must_equal(11905)
  end
end
