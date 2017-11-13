module Esputnik
  module API
    class AccountInfo
      URL = '/api/v1/account/info'
      def self.get
        @@info ||= JSON.parse Esputnik::API.client.get(URL).body
      end

    end
  end
end
