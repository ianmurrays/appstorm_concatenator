# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "appstorm_concatenator/version"

Gem::Specification.new do |s|
  s.name        = "appstorm_concatenator"
  s.version     = AppstormConcatenator::VERSION
  s.authors     = ["Ian Murray"]
  s.email       = ["ianmurrays@gmail.com"]
  s.homepage    = "http://twitter.com/Synt4x"
  s.summary     = %q{Simply concatenates two iPhone screenshots into a single 620px wide image.}
  s.description = %q{Simply concatenates two iPhone screenshots into a single 620px wide image.}

  s.rubyforge_project = "appstorm_concatenator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
