require 'spec_helper'

describe Kata::Kyu8 do
  it 'Nil or Empty' do
    Kata::Kyu8.sum_without_highest_and_lowest_number(nil).must_equal(0)
    Kata::Kyu8.sum_without_highest_and_lowest_number([]).must_equal(0)
  end
  it 'Only one Element' do
    Kata::Kyu8.sum_without_highest_and_lowest_number([3]).must_equal(0)
    Kata::Kyu8.sum_without_highest_and_lowest_number([-3]).must_equal(0)
  end
  it 'Only two Elements' do
    Kata::Kyu8.sum_without_highest_and_lowest_number([3,5]).must_equal(0)
    Kata::Kyu8.sum_without_highest_and_lowest_number([-3,-5]).must_equal(0)
  end
  it 'Real tests' do
    Kata::Kyu8.sum_without_highest_and_lowest_number([6, 2, 1, 8, 10]).must_equal(16)
    Kata::Kyu8.sum_without_highest_and_lowest_number([6, 0, 1, 10, 10]).must_equal(17)
    Kata::Kyu8.sum_without_highest_and_lowest_number([-6, -20, -1, -10, -12]).must_equal(-28)
    Kata::Kyu8.sum_without_highest_and_lowest_number([-6, 20, -1, 10, -12]).must_equal(3)
  end
end
