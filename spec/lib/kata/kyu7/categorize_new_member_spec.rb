require 'spec_helper'

describe Kata::Kyu7 do
  it 'Return open and senior members' do
    Kata::Kyu7.categorize_new_member([[45, 12],[55,21],[19, -2],[104, 20]]).must_equal(['Open', 'Senior', 'Open', 'Senior'])
    Kata::Kyu7.categorize_new_member([[3, 12],[55,1],[91, -2],[54, 23]]).must_equal(['Open', 'Open', 'Open', 'Open'])
    Kata::Kyu7.categorize_new_member([[59, 12],[55,-1],[12, -2],[12, 12]]).must_equal(['Senior', 'Open', 'Open', 'Open'])
    Kata::Kyu7.categorize_new_member([[16, 23],[73,1],[56, 20],[1, -1]]).must_equal(['Open', 'Open', 'Senior', 'Open'])
  end
end
