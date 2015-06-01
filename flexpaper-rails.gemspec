# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flexpaper-rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flexpaper-rails"
  s.version     = FlexpaperRails::VERSION
  s.authors     = ["Elia Schito"]
  s.email       = ["elia@schito.me"]
  s.homepage    = "https://github.com/blwilliams/flexpaper-rails"
  s.summary     = "Rails bindings to Flexpaper."
  s.description = "Rails bindings to Flexpaper."

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "jquery-rails"
end
