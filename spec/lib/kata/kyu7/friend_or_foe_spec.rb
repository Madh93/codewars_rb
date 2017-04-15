require 'spec_helper'

describe Kata::Kyu7 do
  it 'My friends with 4 letters' do
    Kata::Kyu7.friend_or_foe(["Ryan", "Kieran", "Mark"]).must_equal(["Ryan", "Mark"])
    Kata::Kyu7.friend_or_foe(["Ryan", "Jimmy", "123", "4", "Cool Man"]).must_equal(["Ryan"])
    Kata::Kyu7.friend_or_foe(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"]).must_equal(["Jimm", "Cari", "aret"])
    Kata::Kyu7.friend_or_foe(["Love", "Your", "Face", "1"]).must_equal(["Love", "Your", "Face"])
  end
end
