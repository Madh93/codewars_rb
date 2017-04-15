module Kata
  module Kyu7
    class << self

      def count_the_digit(n, d)
        (0..n).map { |x| x**2 }.join.count(d.to_s)
      end

    end
  end
end
