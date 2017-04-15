require 'spec_helper'

describe Kata::Kyu7 do
  it 'Pass binary array to decimal' do
    Kata::Kyu7.ones_and_zeros([0, 0, 0, 1]).must_equal(1)
    Kata::Kyu7.ones_and_zeros([0, 0, 1, 0]).must_equal(2)
    Kata::Kyu7.ones_and_zeros([0, 1, 1, 0]).must_equal(6)
    Kata::Kyu7.ones_and_zeros([1, 1, 1, 1]).must_equal(15)
  end
end
