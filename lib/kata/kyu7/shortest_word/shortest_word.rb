module Kata
  module Kyu7
    class << self

      def shortest_word(s)
        s.split.min_by(&:size).size
      end

    end
  end
end
