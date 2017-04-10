require 'spec_helper'

describe Kata::Kyu7 do
  it 'The middle character of a string' do
    Kata::Kyu7.get_the_middle_character('test').must_equal('es')
    Kata::Kyu7.get_the_middle_character('testing').must_equal('t')
    Kata::Kyu7.get_the_middle_character('middle').must_equal('dd')
    Kata::Kyu7.get_the_middle_character('A').must_equal('A')
    Kata::Kyu7.get_the_middle_character('of').must_equal('of')
  end
end
