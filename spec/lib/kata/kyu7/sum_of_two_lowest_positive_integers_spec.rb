require 'spec_helper'

describe Kata::Kyu7 do
  it 'Sum the two lowest values' do
    Kata::Kyu7.sum_of_two_lowest_positive_integers([19, 5, 42, 2, 77]).must_equal(7)
    Kata::Kyu7.sum_of_two_lowest_positive_integers([5, 8, 12, 18, 22]).must_equal(13)
    Kata::Kyu7.sum_of_two_lowest_positive_integers([7, 15, 12, 18, 22]).must_equal(19)
    Kata::Kyu7.sum_of_two_lowest_positive_integers([25, 42, 12, 18, 22]).must_equal(30)
  end
end
