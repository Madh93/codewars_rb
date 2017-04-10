require 'spec_helper'

describe Kata::Kyu7 do
  it 'Same amount of Xs and Os' do
    Kata::Kyu7.exes_and_ohs('xo').must_equal(true)
    Kata::Kyu7.exes_and_ohs('XO').must_equal(true)
    Kata::Kyu7.exes_and_ohs('xo0').must_equal(true)
    Kata::Kyu7.exes_and_ohs('xxxoo').must_equal(false)
    Kata::Kyu7.exes_and_ohs('xxOo').must_equal(true)
    Kata::Kyu7.exes_and_ohs('xxxxxoooxooo').must_equal(true)
    Kata::Kyu7.exes_and_ohs('xxxm').must_equal(false)
    Kata::Kyu7.exes_and_ohs('ooom').must_equal(false)
  end
end
