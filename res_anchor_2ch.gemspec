$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "res_anchor_2ch/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "res_anchor_2ch"
  s.version     = ResAnchor2ch::VERSION
  s.authors     = ["yoshis777"]
  s.email       = [""]
  s.homepage    = "https://github.com/yoshis777"
  s.summary     = "Input string convert res anchor link like 2ch comment"
  s.description = "文字列から2chのレスアンカーの存在を解析し、リンク化します。"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

end
