require "onsen/version"
require "onsen/command"
require "yaml"

module Onsen
  # Your code goes here...
  def self.config
    YAML.load_file(File.expand_path("~") + '/.onsenconfig')
  end
end
