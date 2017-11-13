module Esputnik
  module API
    class Contact
      URL = '/api/v1/contact'

      attr_accessor :id, :first_name, :last_name, :channels, :fields, :address, :addressbook_id, :groups

      def initialize(args = {})
        @id = args["id"]
        @first_name = args["firstName"]
        @last_name = args["lastName"]
        @channels = args["channels"] || []
        @fields = args["fields"] || []
        @address = args["address"] || {}
        @addressbook_id = args["addressBookId"]
        @groups = args["groups"]
      end

      def self.get(id)
        Esputnik::API.client.get("#{URL}/#{id}")
      end

      def self.post(data:)
        Esputnik::API.client.post(URL, data)
      end

      def self.put(id, data:)
        Esputnik::API.client.put("#{URL}/#{id}", data)
      end

      def self.delete(id)
        Esputnik::API.client.delete("#{URL}/#{id}", data)
      end

      def self.find(id)
        new JSON.parse(get(id).body)
      end

      def to_h
        {
          "id" => @id,
          "firstName" => @first_name,
          "lastName" => @last_name,
          "channels" => @channels,
          "fields" => @fields,
          "address" => @address,
          "addressBookId" => @addressbook_id
        }
      end

      def save
        result = if @id
          self.class.put(@id, data: self.to_h.to_json)
        else
          self.class.post(data: self.to_h.to_json)
        end
        result.body
      end

    end
  end
end
