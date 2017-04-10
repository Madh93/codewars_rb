module Kata
  module Kyu7
    class << self

      def you_are_a_square(n)
        n >= 0 ? (Math.sqrt(n) % 1).zero? : false
      end

    end
  end
end
