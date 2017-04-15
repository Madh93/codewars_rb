require 'spec_helper'

describe Kata::Kyu7 do
  it 'Sum of the first nth terms of series' do
    Kata::Kyu7.sum_of_the_first_nth_term_of_series(1).must_equal('1.00')
    Kata::Kyu7.sum_of_the_first_nth_term_of_series(2).must_equal('1.25')
    Kata::Kyu7.sum_of_the_first_nth_term_of_series(3).must_equal('1.39')
    Kata::Kyu7.sum_of_the_first_nth_term_of_series(5).must_equal('1.57')
  end
end
