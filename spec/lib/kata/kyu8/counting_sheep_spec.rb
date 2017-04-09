require 'spec_helper'

describe Kata::Kyu8 do
  before do
    @array1 = [true,  true,  true,  false,
              true,  true,  true,  true ,
              true,  false, true,  false,
              true,  false, false, true ,
              true,  true,  true,  true ,
              false, false, true,  true ]
    @array2 = Array.new(30, true)
    @array3 = Array.new(10, nil)
  end

  it 'There are 17 sheeps in total' do
    Kata::Kyu8.counting_sheep(@array1).must_equal(17)
  end
  it 'There are 30 sheeps in total' do
    Kata::Kyu8.counting_sheep(@array2).must_equal(30)
  end
  it 'There are no sheeps' do
    Kata::Kyu8.counting_sheep(@array3).must_equal(0)
  end
end
