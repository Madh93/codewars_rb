require 'spec_helper'

describe Kata::Kyu7 do
  it 'Sum of numbers' do
    Kata::Kyu7.sum_of_numbers(0, 1).must_equal(1)
    Kata::Kyu7.sum_of_numbers(0, -1).must_equal(-1)
    Kata::Kyu7.sum_of_numbers(1, 2).must_equal(3)
    Kata::Kyu7.sum_of_numbers(5, -1).must_equal(14)
  end
end
