require "onsen/version"
require "onsen/command"
require "yaml"

module Onsen
  # Your code goes here...
  def self.config
    file_path = File.expand_path("~") + '/.onsenconfig'
    unless File.exist?(file_path)
      temp = {'YO' => {'API_TOKEN' => 'SET_YOUR_TOKEN'},
              'Twitter' => {
                'consumer_key' => 'YOUR_CONSUMER_KEY',
                'consumer_secret' => 'YOUR_CONSUMER_SEKEN',
                'access_token' => 'YOUR_ACCESS_TOKEN',
                'access_token_secret' => 'YOUR_ACCESS_TOKEN_SECRET',
              }
             }
      File.open(file_path, "w") do |f|
        f.write(YAML.dump(temp))
      end
    end
    YAML.load_file(file_path)
  end
end
