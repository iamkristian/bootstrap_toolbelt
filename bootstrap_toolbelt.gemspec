$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_toolbelt/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_toolbelt"
  s.version     = BootstrapToolbelt::VERSION
  s.authors     = ["Kristian Rasmussen"]
  s.email       = ["me@krx.io"]
  s.homepage    = "http://github.com/iamkristian/bootstrap_toolbelt"
  s.summary     = "A collection of view helpers for Bootstrap"
  s.description = "Bootstrap view helpers"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
