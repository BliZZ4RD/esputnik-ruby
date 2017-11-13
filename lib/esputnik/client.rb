module Esputnik
  class Client
    attr_reader :conn

    def initialize(settings)
      @conn = Faraday.new(url: settings.hostname) do |faraday|
        faraday.headers['Content-Type'] = 'application/json'
        faraday.options[:open_timeout] = 2
        faraday.options[:timeout] = 5
        faraday.basic_auth(settings.username, settings.password)
        faraday.adapter Faraday.default_adapter
      end
    end
  end
end
