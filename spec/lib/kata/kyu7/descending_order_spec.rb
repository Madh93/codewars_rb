require 'spec_helper'

describe Kata::Kyu7 do
  it 'Get descending order' do
    Kata::Kyu7.descending_order(0).must_equal(0)
    Kata::Kyu7.descending_order(1).must_equal(1)
    Kata::Kyu7.descending_order(111).must_equal(111)
    Kata::Kyu7.descending_order(15).must_equal(51)
    Kata::Kyu7.descending_order(1021).must_equal(2110)
    Kata::Kyu7.descending_order(123456789).must_equal(987654321)
  end
end
