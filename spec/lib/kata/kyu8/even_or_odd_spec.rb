require 'spec_helper'

describe Kata::Kyu8 do
  it 'Numbers are even or odd' do
    Kata::Kyu8.even_or_odd(0).must_equal('Even')
    Kata::Kyu8.even_or_odd(1).must_equal('Odd')
    Kata::Kyu8.even_or_odd(2).must_equal('Even')
    Kata::Kyu8.even_or_odd(17).must_equal('Odd')
    Kata::Kyu8.even_or_odd(34783).must_equal('Odd')
    Kata::Kyu8.even_or_odd(1000).must_equal('Even')
  end
end
