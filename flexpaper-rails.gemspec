$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flexpaper-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flexpaper-rails"
  s.version     = FlexpaperRails::VERSION
  s.authors     = ["Elia Schito"]
  s.email       = ["elia@schito.me"]
  s.homepage    = "https://github.com/elia/flexpaper-rails"
  s.summary     = "Rails bindings to Flexpaper."
  s.description = "Rails bindings to Flexpaper."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.0"
  s.add_dependency "jquery-rails"
end
