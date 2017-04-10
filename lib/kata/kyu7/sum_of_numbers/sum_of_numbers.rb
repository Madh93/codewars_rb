module Kata
  module Kyu7
    class << self

      def sum_of_numbers(a, b)
        a, b = [a, b].sort
        (a..b).reduce(:+)
      end

    end
  end
end
