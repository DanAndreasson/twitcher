require "pp"

module Twitcher
  class Streamer
    def initialize(name, stream)
      @stream = stream
      @name = name

      pp stream
    end

    def name
      @name
    end

    def viewers
      @viewers ||= @stream['viewers']
    end

    def created_at
      @create_at ||= @stream['viewers']
    end

    def video_height
      @video_height ||= @stream['video_height']
    end

    def average_fps
      @average_fps ||= @stream['average_fps']
    end

    def preview
      # Create struct and ducktype small, medium, large and template
    end

    def channel
      # Return channel object
    end

    def game
      @game ||= @stream['game']
    end

    def display_name
      @display_name ||= @stream['display_name']
    end

    def online?
      true
    end

    def offline?
      false
    end
  end
end
