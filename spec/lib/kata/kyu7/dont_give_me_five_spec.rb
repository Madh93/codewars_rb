require 'spec_helper'

describe Kata::Kyu7 do
  it 'The count of all except 5 in it' do
    Kata::Kyu7.dont_give_me_five(1, 9).must_equal(8)
    Kata::Kyu7.dont_give_me_five(4, 17).must_equal(12)
  end
end
