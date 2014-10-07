# encoding: UTF-8
module Ruboty
  module Actions
    class Theスロット < Base
      def call
        slot_machine = Ruboty::Theスロット::GumFruit.new
        slot_machine.pull_lever
        slot_machine.reels.count.times do |n|
          slot_machine.push_stop_button(n)
        end
        message.reply("@#{message.from_name}#{$/}#{slot_machine.to_s}")
      end
    end
  end
end
