require 'spec_helper'

describe Kata::Kyu7 do
  it '' do
    Kata::Kyu7.list_filtering([1,2,'a','b']).must_equal([1,2])
    Kata::Kyu7.list_filtering([1,'a','b',0,15]).must_equal([1,0,15])
    Kata::Kyu7.list_filtering([1,2,'aasf','1','123',123]).must_equal([1,2,123])
  end
end
