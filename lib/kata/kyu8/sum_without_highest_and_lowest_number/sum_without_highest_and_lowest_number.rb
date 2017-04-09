module Kata
  module Kyu8
    class << self

      def sum_without_highest_and_lowest_number(arr)
        arr.nil? || arr.size < 2 ? 0 : arr.reduce(:+) - arr.min - arr.max
      end

    end
  end
end
