module Kata
  module Kyu7
    class << self

      def mumbling(s)
        s.downcase.each_char.with_index.inject("") do |acc, (c, i)|
          acc << "#{c.upcase}#{c * i}-"
        end[0...-1]
      end

    end
  end
end
