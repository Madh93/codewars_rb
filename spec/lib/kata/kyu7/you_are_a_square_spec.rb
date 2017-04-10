require 'spec_helper'

describe Kata::Kyu7 do
  it 'Really is a square of squares?' do
    Kata::Kyu7.you_are_a_square(-1).must_equal(false)
    Kata::Kyu7.you_are_a_square(3).must_equal(false)
    Kata::Kyu7.you_are_a_square(4).must_equal(true)
    Kata::Kyu7.you_are_a_square(25).must_equal(true)
    Kata::Kyu7.you_are_a_square(26).must_equal(false)
  end
end
