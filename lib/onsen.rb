require "onsen/version"
require "onsen/command"
require "yaml"

module Onsen
  # Your code goes here...
  def self.config
    file_path = File.expand_path("~") + '/.onsenconfig'
    unless File.exist?(file_path)
      temp = {'YO' => {'API_TOKEN' => 'SET_YOUR_TOKEN'}}
      File.open(file_path, "w") do |f|
        f.write(YAML.dump(temp))
      end
    end
    YAML.load_file(file_path)
  end
end
