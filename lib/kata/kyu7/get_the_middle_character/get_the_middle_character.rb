module Kata
  module Kyu7
    class << self

      def get_the_middle_character(s)
         s.size.even? ? "#{s[s.size/2-1]}#{s[s.size/2]}" : s[s.size/2]
      end

    end
  end
end
