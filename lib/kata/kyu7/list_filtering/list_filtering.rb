module Kata
  module Kyu7
    class << self

      def list_filtering(l)
        l.select { |x| x.is_a? Integer }
      end

    end
  end
end
