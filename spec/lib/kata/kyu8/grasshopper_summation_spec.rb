require 'spec_helper'

describe Kata::Kyu8 do
  it 'summation should return the correct total' do
    Kata::Kyu8.grasshopper_summation(1).must_equal(1)
    Kata::Kyu8.grasshopper_summation(8).must_equal(36)
    Kata::Kyu8.grasshopper_summation(22).must_equal(253)
    Kata::Kyu8.grasshopper_summation(100).must_equal(5050)
    Kata::Kyu8.grasshopper_summation(213).must_equal(22791)
  end
end
