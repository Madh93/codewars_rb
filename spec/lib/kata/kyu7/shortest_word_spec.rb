require 'spec_helper'

describe Kata::Kyu7 do
  it 'Get size of shortest word' do
    Kata::Kyu7.shortest_word('bitcoin take over the world maybe who knows perhaps').must_equal(3)
    Kata::Kyu7.shortest_word('turns out random test cases are easier than writing out basic ones').must_equal(3)
    Kata::Kyu7.shortest_word('lets talk about javascript the best language').must_equal(3)
    Kata::Kyu7.shortest_word('i want to travel the world writing code one day').must_equal(1)
    Kata::Kyu7.shortest_word('Lets all go on holiday somewhere very cold').must_equal(2)
  end
end
