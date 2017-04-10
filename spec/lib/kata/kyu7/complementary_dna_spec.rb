require 'spec_helper'

describe Kata::Kyu7 do
  it 'Complementary DNA' do
    Kata::Kyu7.complementary_dna('AAAA').must_equal('TTTT')
    Kata::Kyu7.complementary_dna('ATTGC').must_equal('TAACG')
    Kata::Kyu7.complementary_dna('GTAT').must_equal('CATA')
    Kata::Kyu7.complementary_dna('AAGG').must_equal('TTCC')
    Kata::Kyu7.complementary_dna('CGCG').must_equal('GCGC')
    Kata::Kyu7.complementary_dna('ATTGC').must_equal('TAACG')
  end
end
