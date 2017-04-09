require 'spec_helper'

describe Kata::Kyu8 do
  it 'Get the sum of positives' do
    Kata::Kyu8.sum_of_positive([1,2,3,4,5]).must_equal(15)
    Kata::Kyu8.sum_of_positive([1,-2,3,4,5]).must_equal(13)
    Kata::Kyu8.sum_of_positive([-1,2,3,4,-5]).must_equal(9)
  end
  it 'Returns 0 when array is empty' do
    Kata::Kyu8.sum_of_positive([]).must_equal(0)
  end
  it 'Returns 0 when all elements are negative' do
    Kata::Kyu8.sum_of_positive([-1,-2,-3,-4,-5]).must_equal(0)
  end
end
