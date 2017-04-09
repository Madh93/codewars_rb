require 'spec_helper'

describe Kata::Kyu8 do
  it 'Show the correct index position' do
    Kata::Kyu8.a_needle_in_the_haystack(
      ['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false]
    ).must_equal('found the needle at position 3')

    Kata::Kyu8.a_needle_in_the_haystack(
      ['283497238987234', 'a dog', 'a cat', 'some random junk', 'a piece of hay', 'needle', 'something somebody lost a while ago']
    ).must_equal('found the needle at position 5')

    Kata::Kyu8.a_needle_in_the_haystack(
      [1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,'needle',1,2,3,4,5,5,6,5,4,32,3,45,54]
    ).must_equal('found the needle at position 30')

    Kata::Kyu8.a_needle_in_the_haystack(
      ['needle',1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54]
    ).must_equal('found the needle at position 0')

    Kata::Kyu8.a_needle_in_the_haystack(
      [1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54,'needle']
    ).must_equal('found the needle at position 43')
  end
end
