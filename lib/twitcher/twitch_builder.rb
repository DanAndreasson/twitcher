require_relative 'streamer'
require_relative 'streamer_nil_object'

module Twitcher
  class TwitchBuilder
    def self.build_streamer(stream, streamer_nil_object)
      if stream.nil?
        streamer_nil_object.new name
      else
        Streamer.new name, stream
      end
    end
  end
end
