# -*- encoding: utf-8 -*-
# stub: mixitup-rails 3.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mixitup-rails".freeze
  s.version = "3.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ilya Bodrov".freeze]
  s.date = "2019-06-26"
  s.description = "Integrates MixItUp, a library for animated filtering, sorting, insertion, removal, and more, into your Rails app.".freeze
  s.email = ["golosizpru@gmail.com".freeze]
  s.homepage = "https://github.com/bodrovis/mixitup-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Integrates MixItUp into Rails app.".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_development_dependency(%q<rails>.freeze, ["~> 5.1"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.1"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_dependency(%q<rails>.freeze, ["~> 5.1"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    s.add_dependency(%q<rails>.freeze, ["~> 5.1"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.1"])
  end
end
