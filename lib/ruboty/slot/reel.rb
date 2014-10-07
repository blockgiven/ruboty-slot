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

      def to_a(size = default_display_size)
        @symbols.lazy.cycle.drop(@rolled_count + @stopped_at).take(size).to_a
      end
    end
  end
end
