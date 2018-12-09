$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "res_anchor_2ch/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "res_anchor_2ch"
  s.version     = ResAnchor2ch::VERSION
  s.authors     = ["yoshis777"]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ResAnchor2ch."
  s.description = "TODO: Description of ResAnchor2ch."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
