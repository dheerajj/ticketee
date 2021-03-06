# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cucumber-rails-training-wheels}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aslak Helles\u00F8y"]
  s.date = %q{2011-10-05}
  s.description = %q{Training Wheels for Cucumber-Rails}
  s.email = %q{cukes@googlegroups.com}
  s.homepage = %q{http://cukes.info}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{cucumber-rails-training-wheels-1.0.0}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber-rails>, [">= 1.1.1"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<aruba>, [">= 0.4.6"])
      s.add_development_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.6.1"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.6.7"])
    else
      s.add_dependency(%q<cucumber-rails>, [">= 1.1.1"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<aruba>, [">= 0.4.6"])
      s.add_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.6.1"])
      s.add_dependency(%q<database_cleaner>, [">= 0.6.7"])
    end
  else
    s.add_dependency(%q<cucumber-rails>, [">= 1.1.1"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<aruba>, [">= 0.4.6"])
    s.add_dependency(%q<rspec>, [">= 2.6.0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.6.1"])
    s.add_dependency(%q<database_cleaner>, [">= 0.6.7"])
  end
end
