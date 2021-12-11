# -*- encoding: utf-8 -*-
# stub: starwars 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "starwars".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Moski Doski".freeze]
  s.date = "2014-12-30"
  s.description = "A Ruby interface to the awesome swapi.co api, it matches each api with a resource and method".freeze
  s.email = ["moski.doski@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "A Ruby helper library for swapi.co - the Star Wars API".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<roar>.freeze, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<virtus>.freeze, ["~> 1.0.3"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<roar>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<virtus>.freeze, ["~> 1.0.3"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<roar>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<virtus>.freeze, ["~> 1.0.3"])
  end
end
