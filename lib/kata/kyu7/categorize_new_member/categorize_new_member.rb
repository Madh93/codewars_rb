module Kata
  module Kyu7
    class << self

      def categorize_new_member(data)
        data.map { |age, handicap| age > 54 && handicap > 7 ? "Senior" : "Open" }
      end

    end
  end
end
