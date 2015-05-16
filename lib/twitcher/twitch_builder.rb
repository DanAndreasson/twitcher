require_relative 'request'
require_relative 'streamer'

module Twitcher
  class TwitchBuilder
    include Request
    BASE_URL = 'https://api.twitch.tv/kraken'

    def get_streamer(name)
      stream = get("streams/#{name}")
      Streamer.new stream
    end

    private

    def get(rurl)
      http_get BASE_URL, rurl
    end
  end
end
