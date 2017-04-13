module Kata
  module Kyu7
    class << self

      def credit_card_mask(s)
        s.gsub(/.(?=.{4})/, '#')
      end

    end
  end
end
