# encoding: UTF-8
require "ruboty/slot/reel"

module Ruboty
  module Slot
    class GumFruit
      B = ":bell:"         # ベル
      O = ":tangerine:"    # オレンジ
      L = ":lemon:"        # レモン
      M = ":herb:"         # スペアミント
      P = ":peach:"        # プラム
      G = ":slot_machine:" # ガム

      def reels
        @reels ||= [
          Reel.new(P, M, L, G, B, M, L, O, B, M, O, P, M, L),
          Reel.new(L, G, O, M, B, O, P, M, B, P, O, M, B, O),
          Reel.new(G, L, P, O, B, P, O, G, L, P, O, L, B, O)
        ]
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
