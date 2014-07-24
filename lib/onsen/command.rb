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
  end
end
