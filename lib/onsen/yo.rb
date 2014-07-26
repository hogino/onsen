require 'onsen'
require 'thor'
require 'thor/group'

module Onsen
  class Yo < Thor
    namespace :yo
    desc "send", "puts yo 送信"
    def send
      puts "yo 送信！！"
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
