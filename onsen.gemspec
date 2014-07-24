# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onsen/version'

Gem::Specification.new do |spec|
  spec.name          = "onsen"
  spec.version       = Onsen::VERSION
  spec.authors       = ["hogino"]
  spec.email         = ["malmal367@gmail.com"]
  spec.summary       = %q{gem command cui.}
  spec.description   = %q{Send me YO in gem command.(gem commandでYO!を送信します。)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "thor"
end
