# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-mcs"
  s.version     = "0.0.5" 
  s.authors     = ["128keaton"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{A ruby minecraft status checker for SiriProxy}
  s.description = %q{Commands: Fetch the motto of the day, fetches MOTD. Check minecraft server, fetches info: players, version. }

  s.rubyforge_project = "siriproxy-example"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
