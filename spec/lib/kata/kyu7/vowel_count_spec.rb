require 'spec_helper'

describe Kata::Kyu7 do
  it 'Count vowels' do
    Kata::Kyu7.vowel_count('abracadabra').must_equal(5)
    Kata::Kyu7.vowel_count('').must_equal(0)
    Kata::Kyu7.vowel_count('pear tree').must_equal(4)
    Kata::Kyu7.vowel_count('o a kak ushakov lil vo kashu kakao').must_equal(13)
  end
end
