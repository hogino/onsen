require 'onsen'
require 'onsen/yo'
require 'onsen/twitter'
require 'thor'
require 'thor/group'

module Onsen
  class Command < Thor
    register(Twitter, 'twitter', 'twitter [COMMAND]', 'commands for twitter')
    register(Yo, 'yo', 'yo [COMMAND]', 'commands for yo')
  end
end

