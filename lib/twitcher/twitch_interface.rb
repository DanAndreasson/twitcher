require_relative 'request'
require_relative 'twitch_builder'

module Twitcher
  class TwitchInterface
    include Request

    def get_streamer(name, nil_object=StreamerNilObject)
      response = get("streams/#{name}")
      stream = response['stream']
      TwitchBuilder.build_streamer stream, nil_object
    end

    private

    BASE_URL = 'https://api.twitch.tv/kraken'
    def get(rurl)
      http_get BASE_URL, rurl
    end
  end
end
