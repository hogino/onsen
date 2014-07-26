require 'onsen'
require 'thor'

module Onsen
  class Command < Thor
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
  end
end
