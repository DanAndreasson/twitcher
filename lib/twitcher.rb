require_relative 'twitcher/twitch_builder'

module Twitcher
  class Twitcher
    def self.new
      TwitchBuilder.new
    end
  end
end

Twitcher::Twitcher.new
