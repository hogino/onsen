require 'onsen'
require 'thor'
require 'thor/group'

module Onsen
  class Twitter < Thor
    namespace :twitter

    option :message, :type => :boolean
    option :test, :type => :boolean
    desc "twite message", "puts times twite"
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
end
