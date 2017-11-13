module Esputnik
  module API
    class Contacts
      attr_reader :collection, :total, :startindex, :maxrows

      URL = '/api/v1/contacts'

      def initialize(contacts, info:)
        @collection = contacts.map do |contact|
          Contact.new(contact)
        end
        @total = info[:total].to_i
        @startindex = info[:startindex] || 1
        @maxrows = info[:maxrows] || 500
      end

      def self.get(startindex: nil, maxrows: nil)
        client = Esputnik::API.client
        request_params = {startindex: startindex, maxrows: maxrows}
        response = client.get(URL, request_params)
        new(JSON.parse(response.body), info: {
          total: response.headers['totalcount'],
          startindex: startindex,
          maxrows: maxrows
          })
      end

      def pages_count
        @total.fdiv(@maxrows).ceil
      end

      def next_page
        self.class.get(startindex: @startindex + @maxrows, maxrows: @maxrows)
      end

      def prev_page
        self.class.get(startindex: @startindex - @maxrows, maxrows: @maxrows)
      end

      def self.post(collection)

      end

      def each
        @collection.each{|contact| yield contact}
      end

      def map
        @collection.map{|contact| yield contact}
      end

      def to_a
        @collection
      end

    end
  end
end
