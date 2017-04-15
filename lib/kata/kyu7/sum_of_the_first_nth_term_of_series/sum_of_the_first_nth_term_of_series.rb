module Kata
  module Kyu7
    class << self

      def sum_of_the_first_nth_term_of_series(n)
        '%.2f' % [*(1..n)].each.with_index.inject(0.0) do |sum, (_, i)|
          sum + 1.0/(i*3+1)
        end.to_s
      end

    end
  end
end
