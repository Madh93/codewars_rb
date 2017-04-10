require 'spec_helper'

describe Kata::Kyu7 do
  it 'Calculate future population' do
    Kata::Kyu7.growth_of_a_population(1500, 5, 100, 5000).must_equal(15)
    Kata::Kyu7.growth_of_a_population(1500000, 2.5, 10000, 2000000).must_equal(10)
    Kata::Kyu7.growth_of_a_population(1500000, 0.25, 1000, 2000000).must_equal(94)
  end
end
