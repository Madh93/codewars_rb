module Kata
  module Kyu7
    class << self

      def jaden_casing_strings(s)
        s.split(' ').map(&:capitalize).join(' ')
      end

    end
  end
end
