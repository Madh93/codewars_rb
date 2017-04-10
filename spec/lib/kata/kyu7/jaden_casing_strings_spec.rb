require 'spec_helper'

describe Kata::Kyu7 do

  before do
    @quotes = [
      [
        "most trees are blue",
        "Most Trees Are Blue"
      ],
      [
        "How can mirrors be real if our eyes aren't real",
        "How Can Mirrors Be Real If Our Eyes Aren't Real"
      ],
      [
        "All the rules in this world were made by someone no smarter than you. So make your own.",
        "All The Rules In This World Were Made By Someone No Smarter Than You. So Make Your Own."
      ],
      [
        "School is the tool to brainwash the youth.",
        "School Is The Tool To Brainwash The Youth."
      ],
      [
        "If newborn babies could speak they would be the most intelligent beings on planet Earth.",
        "If Newborn Babies Could Speak They Would Be The Most Intelligent Beings On Planet Earth."
      ],
      [
        "If everybody in the world dropped out of school we would have a much more intelligent society.",
        "If Everybody In The World Dropped Out Of School We Would Have A Much More Intelligent Society."
      ],
      [
        "Trees are never sad look at them every once in awhile they're quite beautiful.",
        "Trees Are Never Sad Look At Them Every Once In Awhile They're Quite Beautiful."
      ],
      [
        "When I die. then you will realize",
        "When I Die. Then You Will Realize"
      ],
      [
        "I should just stop tweeting, the human conciousness must raise before I speak my juvenile philosophy.",
        "I Should Just Stop Tweeting, The Human Conciousness Must Raise Before I Speak My Juvenile Philosophy."
      ],
    ]
  end


  it 'Jaden Smith always capitalize his tweets' do
    for q in @quotes.shuffle
      Kata::Kyu7.jaden_casing_strings(q[0]).must_equal(q[1])
    end
  end
end
