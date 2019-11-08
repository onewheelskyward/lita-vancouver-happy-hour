module Lita
  module Handlers
    class VancouverHappyHour < Handler

      route /^happyhour$/i,
            :get_happy_hour,
            command: true,
            help: { '!happyhour' => 'Gives you happy hour suggestions.' }
      route /^happyhr$/i,
            :get_happy_hour,
            command: true,
            help: { '!happyhr' => 'Gives you happy hour suggestions.' }
      route /^hh$/i,
            :get_happy_hour,
            command: true,
            help: { '!hh' => 'Gives you happy hour suggestions.' }

      def get_happy_hour(response)
        response.reply "Hi Michael!"
      end
    end

    Lita.register_handler(VancouverHappyHour)
  end
end
