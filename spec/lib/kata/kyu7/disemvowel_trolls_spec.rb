require 'spec_helper'

describe Kata::Kyu7 do
  it 'Dont feed the troll' do
    Kata::Kyu7.disemvowel_trolls('This website is for losers LOL!').must_equal(
      'Ths wbst s fr lsrs LL!'
    )
    Kata::Kyu7.disemvowel_trolls('No offense but,\nYour writing is among the worst I\'ve ever read').must_equal(
      'N ffns bt,\nYr wrtng s mng th wrst \'v vr rd'
    )
    Kata::Kyu7.disemvowel_trolls('What are you, a communist?').must_equal(
      'Wht r y,  cmmnst?'
    )
  end
end
