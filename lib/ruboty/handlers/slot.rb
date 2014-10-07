# encoding: UTF-8
require 'ruboty/actions/slot'

module Ruboty
  module Handlers
    class Slot < Base
      on /(?:スロット|slot)/, name: 'スロット', description: 'play slot machine'

      def スロット(message)
        Ruboty::Actions::Slot.new(message).call
      end
    end
  end
end
