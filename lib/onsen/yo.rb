require 'onsen'
require 'thor'
require 'thor/group'
require 'yo_client'

module Onsen
  class Yo < Thor
    namespace :yo
    desc "yo", "say yo"
    def to(username = 'all')
      client = YoClient::Client.new(Onsen.config["YO"]["API_TOKEN"])
      if username != 'all'
        puts "yo to #{username}!"
        #client.yo(username)
      else
        puts "yo all my friends!"
        #client.yoall
      end
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
