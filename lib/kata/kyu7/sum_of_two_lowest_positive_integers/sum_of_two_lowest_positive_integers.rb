module Kata
  module Kyu7
    class << self

      def sum_of_two_lowest_positive_integers(numbers)
        numbers.min(2).reduce(:+)
      end

    end
  end
end
