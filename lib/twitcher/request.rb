require 'net/http'
require 'json'

module Twitcher
  module Request
    def http_get(base_url, rurl)
      uri = URI("#{base_url}/#{rurl}")
      Net::HTTP.get(uri)
    end
  end
end
