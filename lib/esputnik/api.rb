module Esputnik
  module API
    def self.client
      @@client ||= Client.new(Esputnik.settings).conn
    end
  end
end
