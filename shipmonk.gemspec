# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shipmonk/version'

Gem::Specification.new do |spec|
  spec.name          = "shipmonk"
  spec.version       = Shipmonk::VERSION
  spec.authors       = ["Jason Wall"]
  spec.email         = ["javajo@gmail.com"]
  spec.description   = %q{Environment for prototyping, developing, and maintaining static websites}
  spec.summary       = %q{Environment for prototyping, developing, and maintaining static websites}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "haml", '>= 4.0.3'
  spec.add_runtime_dependency "rack", '>= 1.5.2'
  spec.add_runtime_dependency "thor", '~> 0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
