# encoding: UTF-8

module Ruboty
  module Slot
    class SlotMachine
      def reels
        []
      end

      def pull_lever
        reels.each(&:roll)
      end

      def push_stop_button(n)
        reels[n].stop
      end

      def to_s
        first, *rest = reels.map(&:to_a)
        first.zip(*rest).map(&:join).join($/)
      end
    end
  end
end
