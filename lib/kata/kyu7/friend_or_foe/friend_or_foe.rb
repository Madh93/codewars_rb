module Kata
  module Kyu7
    class << self

      def friend_or_foe(friends)
        friends.select { |x| x.size == 4 }
      end

    end
  end
end
