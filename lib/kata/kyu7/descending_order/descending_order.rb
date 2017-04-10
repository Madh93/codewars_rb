module Kata
  module Kyu7
    class << self

      def descending_order(n)
        n.to_s.chars.sort.reverse.join.to_i
      end

    end
  end
end
