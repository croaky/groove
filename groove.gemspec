# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{groove}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Croak"]
  s.date = %q{2009-12-31}
  s.default_executable = %q{groove}
  s.description = %q{A web application stack composed of Sinatra, MongoDB, Effigy, and Hoptoad.}
  s.email = %q{dcroak@thoughtbot.com}
  s.executables = ["groove"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "README.md",
     "Rakefile",
     "VERSION",
     "groove.gemspec",
     "lib/groove.rb",
     "lib/groove/effigy.rb",
     "lib/groove/hoptoad.rb",
     "lib/groove/mongo.rb",
     "lib/groove/sinatra.rb"
  ]
  s.homepage = %q{http://github.com/dancroak/groove}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A web application stack composed of Sinatra, MongoDB, Effigy, and Hoptoad.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<mongo>, [">= 0"])
      s.add_runtime_dependency(%q<effigy>, [">= 0"])
      s.add_runtime_dependency(%q<rack_hoptoad>, [">= 0"])
      s.add_runtime_dependency(%q<x>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<mongo>, [">= 0"])
      s.add_dependency(%q<effigy>, [">= 0"])
      s.add_dependency(%q<rack_hoptoad>, [">= 0"])
      s.add_dependency(%q<x>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<mongo>, [">= 0"])
    s.add_dependency(%q<effigy>, [">= 0"])
    s.add_dependency(%q<rack_hoptoad>, [">= 0"])
    s.add_dependency(%q<x>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
  end
end

