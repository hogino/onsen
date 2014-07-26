require 'onsen'
require 'thor'
require 'thor/group'

module Onsen
  class Weather < Thor
    #namespace :weather
    desc "weather", "weather forcast fot Tokyo today"
    def send
      puts "Weather forcast for Tokyo today"
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
