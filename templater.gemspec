# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{templater}
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonas Nicklas"]
  s.date = %q{2009-08-28}
  s.description = %q{Templater has the ability to both copy files from A to B and also to render templates using ERB. Templater consists of four parts:

- Actions (File copying routines, templates generation and directories creation routines).
- Generators (set of rules).
- Manifolds (generator suites).
- The command line interface.

Hierarchy is pretty simple: manifold has one or many public and private generators. Public ones are supposed to be called
by end user. Generators have one or more action that specify what they do, where they take files, how they name resulting
files and so forth.}
  s.email = ["jonas.nicklas@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.homepage = %q{http://github.com/jnicklas/templater}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{templater}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Templater has the ability to both copy files from A to B and also to render templates using ERB}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<highline>, [">= 1.4.0"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<extlib>, [">= 0.9.5"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.8"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<highline>, [">= 1.4.0"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
      s.add_dependency(%q<extlib>, [">= 0.9.5"])
      s.add_dependency(%q<rspec>, [">= 1.2.8"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<highline>, [">= 1.4.0"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    s.add_dependency(%q<extlib>, [">= 0.9.5"])
    s.add_dependency(%q<rspec>, [">= 1.2.8"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
