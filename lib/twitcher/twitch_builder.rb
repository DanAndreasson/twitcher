require_relative 'request'

module Twitcher
  class TwitchBuilder
    include Request
    BASE_URL = 'https://api.twitch.tv/kraken'

    def initialize
      puts get ''
    end

    private

    def get(rurl)
      http_get BASE_URL, rurl
    end
  end
end
