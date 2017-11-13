require 'pry'
require 'json'
require "esputnik/version"
require "faraday"
require "esputnik/settings"
require "esputnik/client"
require "esputnik/api"
require "esputnik/api/account_info"
require "esputnik/api/contact"
require "esputnik/api/contacts"
require "esputnik/api/addressbook"
require "esputnik/api/addressbooks"

module Esputnik

  def self.settings
    @@settings ||= Settings.new(env: 'development', partner: 'pokuponua')
  end

  def self.account_info
    API::AccountInfo.get
  end

  def self.addressbook
    API::Addressbooks.get
  end

  def self.get_contacts(startindex: nil, maxrows: nil)
    API::Contacts.get(startindex: startindex, maxrows: maxrows)
  end


end
