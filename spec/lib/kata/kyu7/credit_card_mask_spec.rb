require 'spec_helper'

describe Kata::Kyu7 do
  it '' do
    Kata::Kyu7.credit_card_mask('4556364607935616').must_equal('############5616')
    Kata::Kyu7.credit_card_mask('1').must_equal('1')
    Kata::Kyu7.credit_card_mask('11111').must_equal('#1111')
    Kata::Kyu7.credit_card_mask('Skippy').must_equal('##ippy')
    Kata::Kyu7.credit_card_mask('').must_equal('')
  end
end
