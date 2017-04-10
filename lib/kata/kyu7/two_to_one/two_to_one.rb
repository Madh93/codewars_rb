module Kata
  module Kyu7
    class << self

      def two_to_one(s1, s2)
        (s1 + s2).chars.uniq.sort.join
      end

    end
  end
end
