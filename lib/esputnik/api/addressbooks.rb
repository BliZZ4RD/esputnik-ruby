module Esputnik
  module API
    class Addressbooks
      URL = '/api/v1/addressbooks'

      def self.get
        @@book ||= Addressbook.new(JSON.parse(Esputnik::API.client.get(URL).body)['addressBook'])
      end

    end
  end
end
