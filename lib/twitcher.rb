require_relative 'twitcher/twitch_builder'

module Twitcher
  class Twitcher
    def self.new
      TwitchBuilder.new
    end
  end
end

twitch = Twitcher::Twitcher.new
dray = twitch.get_streamer "drayswe"
puts "dray: #{dray.game}"
puts "#"*100
silas = twitch.get_streamer "silasftw"
puts "silas: #{silas.game}"
