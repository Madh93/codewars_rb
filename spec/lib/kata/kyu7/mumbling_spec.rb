require 'spec_helper'

describe Kata::Kyu7 do
  it 'A custom accumulator' do
    Kata::Kyu7.mumbling('ZpglnRxqenU').must_equal(
      'Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu'
    )
    Kata::Kyu7.mumbling('NyffsGeyylB').must_equal(
      'N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb'
    )
    Kata::Kyu7.mumbling('MjtkuBovqrU').must_equal(
      'M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu'
    )
    Kata::Kyu7.mumbling('EvidjUnokmM').must_equal(
      'E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm'
    )
    Kata::Kyu7.mumbling('HbideVbxncC').must_equal(
      'H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc'
    )
  end
end
