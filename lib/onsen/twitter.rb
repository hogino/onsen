require 'onsen'
require 'thor'
require 'thor/group'
require 'twitter'

module Onsen
  class Twitter < Thor
    namespace :twitter

    option :message, :type => :boolean
    option :test, :type => :boolean
    desc "tweet message", "message required"
    def tweet(msg)
      client.update(msg)
    end

    desc "get", "twitter client"
    def client
      ::Twitter::REST::Client.new(
        consumer_key:        Onsen.config["Twitter"]["consumer_key"],
        consumer_secret:     Onsen.config["Twitter"]["consumer_secret"],
        access_token:        Onsen.config["Twitter"]["access_token"],
        access_token_secret: Onsen.config["Twitter"]["access_token_secret"],
      )
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
