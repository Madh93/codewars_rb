module Kata
  module Kyu7
    class << self

      def dont_give_me_five(a, b)
        (a..b).map(&:to_s).grep(/^[^5]+$/).count
      end

    end
  end
end
