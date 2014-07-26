require 'onsen'
require 'thor'
require 'thor/group'

module Onsen
  class Yo < Thor
    namespace :yo
    desc "yo", "puts times twite"
    def yo
      puts "yo aa"
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
