require 'spec_helper'

describe Kata::Kyu8 do
  it 'Convert number to reversed array of digits' do
    Kata::Kyu8.convert_number_to_reversed_array_of_digits(35231).must_equal([1,3,2,5,3])
    Kata::Kyu8.convert_number_to_reversed_array_of_digits(23582357).must_equal([7,5,3,2,8,5,3,2])
    Kata::Kyu8.convert_number_to_reversed_array_of_digits(984764738).must_equal([8,3,7,4,6,7,4,8,9])
    Kata::Kyu8.convert_number_to_reversed_array_of_digits(45762893920).must_equal([0,2,9,3,9,8,2,6,7,5,4])
    Kata::Kyu8.convert_number_to_reversed_array_of_digits(548702838394).must_equal([4,9,3,8,3,8,2,0,7,8,4,5])
  end
end
