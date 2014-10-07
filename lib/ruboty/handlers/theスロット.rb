# encoding: UTF-8
require 'ruboty/actions/theスロット'

module Ruboty
  module Handlers
    class Theスロット < Base
      on /(?:スロット|slot)/, name: 'スロット', description: 'play slot machine'

      def スロット(message)
        Ruboty::Actions::Theスロット.new(message).call
      end
    end
  end
end
