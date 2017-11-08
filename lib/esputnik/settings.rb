require 'yaml'
module Esputnik
  class Settings

    attr_reader :host, :username, :password

    def initialize

    end

    private

    def load_config
      begin
        config = YAML::load(IO.read(File.join(File.expand_path(File.dirname(__FILE__), 'config/eputnik.yml'))))
      rescue Errno::ENOENT
        log(:warning, "YAML configuration file couldn't be found. Using defaults."); return
      rescue Psych::SyntaxError
        log(:warning, "YAML configuration file contains invalid syntax. Using defaults."); return
      end

    end
  end
end
