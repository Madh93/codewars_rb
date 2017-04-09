module Kata
  module Kyu8
    class << self

      def fake_binary(s)
        s.chars.map { |x| x < '5' ? '0' : '1' }.join
      end

    end
  end
end
