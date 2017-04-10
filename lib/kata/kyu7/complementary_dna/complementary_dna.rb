module Kata
  module Kyu7
    class << self

      def complementary_dna(dna)
        dna.tr('ATCG', 'TAGC')
      end

    end
  end
end
