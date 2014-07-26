require 'onsen'
require 'onsen/yo'
require 'onsen/twitter'
require 'onsen/weather'
require 'thor'
require 'thor/group'

module Onsen
  class Command < Thor
<<<<<<< HEAD
    option :message, :type => :boolean
    option :test, :type => :boolean
    desc "twitter times", "puts times twite"
    def twitter(times)
      output = []
      output << "#{times} ツイートするよ？"
      output << 'メッセージ追加です！！' if options[:message]
      puts options[:test] ? (output << 'test実行です。') : output
    end

    ## July 26th Added by coosuke
    desc "weather city", "get one city's weather forecast"
    def weather(city, year, month, date)
      output = []
      output << "#{year} 年 #{month} 月 #{date} 日の #{city} の天気予報をお送りします"
      puts output
    end
=======
    register(Twitter, 'twitter', 'twitter [COMMAND]', 'commands for twitter')
    register(Yo, 'yo', 'yo [COMMAND]', 'commands for yo')
    register(Weather, 'weather', 'weather [COMMAND]', 'commands for weather')
>>>>>>> develop
  end
end

