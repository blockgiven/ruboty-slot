# encoding: UTF-8
require 'ruboty/actions/slot'

module Ruboty
  module Handlers
    class Slot < Base
      on /(?:スロット|slot)/, name: 'slot', description: 'play slot machine'

      def slot(message)
        Ruboty::Actions::Slot.new(message).call
      end
    end
  end
end
