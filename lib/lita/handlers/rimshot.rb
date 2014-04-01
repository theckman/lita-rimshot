# -*- coding: UTF-8 -*-
require 'lita'

module Lita
  module Handlers
    # InstantRimshot handler for Lita
    # This really does nothing useful...
    #
    class Rimshot < Handler
      URL ||= 'http://instantrimshot.com/classic/?sound=rimshot'

      route(
        /^rimshot$/,
        :rimshot,
        command: true,
        help: { 'rimshot' => 'Get an instant rimshot!' }
      )

      def rimshot(response)
        response.reply("Here ya go! #{URL}")
      end

      Lita.register_handler(Rimshot)
    end
  end
end
