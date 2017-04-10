require 'spec_helper'

describe Kata::Kyu7 do
  it 'Printer errors' do
    Kata::Kyu7.printer_errors('aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz').must_equal('3/56')
    Kata::Kyu7.printer_errors('kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz').must_equal('6/60')
    Kata::Kyu7.printer_errors('kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu').must_equal('11/65')
  end
end
