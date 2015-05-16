require_relative "streamer_nil_object"
require "pp"

module Twitcher
  class Streamer
    def initialize(stream, nil_object=StreamerNilObject)
      @stream = stream["stream"]
      @nil_object = nil_object
      @online = @stream != nil
    end

    def game
      @game ||= stream_get("game") || StreamerNilObject.game
    end

    def display_name
      @display_name ||= stream_get("display_name") || StreamerNilObject.display_name
    end

    def online?
      @online
    end

    def offline_or_missing?
      !online?
    end

    def stream_get(key)
      if online? && @stream.has_key?(key)
        @stream[key]
      end
    end

  end
end
