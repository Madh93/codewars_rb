require 'spec_helper'

describe Kata::Kyu7 do
  it '' do
    Kata::Kyu7.two_to_one('aretheyhere', 'yestheyarehere').must_equal(
      'aehrsty'
    )
    Kata::Kyu7.two_to_one('loopingisfunbutdangerous', 'lessdangerousthancoding').must_equal(
      'abcdefghilnoprstu'
    )
    Kata::Kyu7.two_to_one('inmanylanguages', 'theresapairoffunctions').must_equal(
      'acefghilmnoprstuy'
    )
  end
end
