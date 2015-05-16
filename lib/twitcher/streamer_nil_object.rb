module Twitcher
  class StreamerNilObject
    def initialize(name)
      @name = name
    end

    def name
      @name
    end

    def game
      ""
    end
  end
end
