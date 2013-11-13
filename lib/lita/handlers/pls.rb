require "lita"

module Lita
  module Handlers
    class Pls < Handler
      route(/^pls/, :pls, command: true, help: { "pls" => "k" })

      def pls(response)
        response.reply("k")
      end
    end

    Lita.register_handler(Pls)
  end
end
