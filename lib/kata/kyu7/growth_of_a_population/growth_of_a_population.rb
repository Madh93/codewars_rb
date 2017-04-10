module Kata
  module Kyu7
    class << self

      def growth_of_a_population(p0, percent, aug, p)
        loop.with_index(1) do |_, years|
          return years unless (p0 += (p0 * percent/100.0 + aug).floor) < p
        end
      end

    end
  end
end
