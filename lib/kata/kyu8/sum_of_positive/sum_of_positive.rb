module Kata
  module Kyu8
    class << self

      def sum_of_positive(arr)
        arr.select(&:positive?).reduce(0, :+)
      end

    end
  end
end
