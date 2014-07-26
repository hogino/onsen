require 'onsen'
require 'thor'
require 'thor/group'
require 'weatherhacks'

module Onsen
  class Weather < Thor
    namespace :weather
    desc "send", "weather forcast for Tokyo today"
    def send
      puts "Get weather forcast for Tokyo today..."
      day =:today
      day_string = "今日"
      forcast = weatherhacks.lwws("東京", day)
      puts day_string + "の東京の天気"
      puts forcast
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
