require 'yaml'
module Esputnik
  class Settings

    attr_reader :hostname, :username, :password

    def initialize(env:, partner:)
      @hostname = config[env]['esputnik'][partner]['hostname']
      @username = config[env]['esputnik'][partner]['username']
      @password = config[env]['esputnik'][partner]['password']
    end

    private

    def config
      # begin
      #   config = YAML::load(IO.read(File.join(File.expand_path(File.dirname(__FILE__), 'config/esputnik.yml'))))
      # rescue Errno::ENOENT
      #   log(:warning, "YAML configuration file couldn't be found. Using defaults."); return
      # rescue Psych::SyntaxError
      #   log(:warning, "YAML configuration file contains invalid syntax. Using defaults."); return
      # end
      # File.expand_path(File.dirname(__FILE__)) -> /home/blizz/projects/esputnik-ruby/lib/esputnik in console
      # @abur ||= YAML::load(IO.read(File.join(File.expand_path(File.dirname(__FILE__), 'config/esputnik.yml'))))
      @config ||= YAML::load(IO.read(File.join('/home/blizz/projects/esputnik-ruby', 'config/esputnik.yml')))
     end
  end
end
