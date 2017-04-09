require 'spec_helper'

describe Kata::Kyu8 do
  it 'Multiply two numbers' do
    Kata::Kyu8.multiply(4, 6).must_equal(24)
    Kata::Kyu8.multiply(-3, 12).must_equal(-36)
    Kata::Kyu8.multiply(7, 0).must_equal(0)
    Kata::Kyu8.multiply(1, 66).must_equal(66)
  end
end
