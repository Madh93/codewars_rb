require 'spec_helper'

describe Kata::Kyu8 do
  it 'Return a fake binary number' do
    Kata::Kyu8.fake_binary('45385593107843568').must_equal('01011110001100111')
    Kata::Kyu8.fake_binary('509321967506747').must_equal('101000111101101')
    Kata::Kyu8.fake_binary('366058562030849490134388085').must_equal('011011110000101010000011011')
  end
end
