module Kata
  module Kyu8
    class << self

      def convert_number_to_reversed_array_of_digits(n)
        n.to_s.reverse.chars.map(&:to_i)
      end

    end
  end
end
