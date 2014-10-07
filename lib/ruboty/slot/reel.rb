# encoding: UTF-8
require 'securerandom'

module Ruboty
  module Slot
    class Reel
      DEFAULT_DISPLAY_SIZE = 3

      def initialize(*symbols)
        @symbols = symbols
      end

      def default_display_size
        DEFAULT_DISPLAY_SIZE
      end

      def roll
        @rolled_count = SecureRandom.random_number(size)
        @stopped_at = nil
      end

      def size
        @symbols.size
      end

      def stop(stopped_at  = SecureRandom.random_number(size))
        @stopped_at = stopped_at
      end

      def to_s(display_size = default_display_size)
        @symbols.cycle.drop(@rolled_count + @stopped_at).take(display_size)
      end
    end
  end
end
