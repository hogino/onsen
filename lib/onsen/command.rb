require 'onsen'
# require 'onsen/*'
require 'thor'
require 'thor/group'

module Onsen
  class Twitter < Thor
    namespace :twitter

    option :message, :type => :boolean
    option :test, :type => :boolean
    desc "twitter message", "puts times twite"
    def twite(msg)
      output = []
      output << "#{msg} ツイートするよ？"
      output << 'メッセージ追加です！！' if options[:message]
      puts options[:test] ? (output << 'test実行です。') : output
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end

  class Yo < Thor
    namespace :yo
    desc "yo", "puts times twite"
    def send
      puts "yo 送信！！"
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end

  class Command < Thor
    register(Twitter, 'twitter', 'twitter [COMMAND]', 'commands for twitter')
    register(Yo, 'yo', 'yo [COMMAND]', 'commands for yo')
  end
end

