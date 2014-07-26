require 'onsen'
require 'thor'
require 'thor/group'

module Onsen
  class Weather < Thor
    namespace :weather
    desc "send", "weather forcast for Tokyo today"
    def send
      puts "Get weather forcast for Tokyo today..."
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
