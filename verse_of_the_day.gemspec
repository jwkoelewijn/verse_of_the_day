# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'verse_of_the_day/version'

Gem::Specification.new do |spec|
  spec.name          = "verse_of_the_day"
  spec.version       = VerseOfTheDay::VERSION
  spec.authors       = ["J.W. Koelewijn"]
  spec.email         = ["jwkoelewijn@gmail.com"]
  spec.summary       = %q{Give a verse of the day}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_runtime_dependency "nokogiri", "~> 1.10.4"
  spec.add_runtime_dependency "httpclient"
end
