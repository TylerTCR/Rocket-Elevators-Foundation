# -*- encoding: utf-8 -*-
# stub: roar 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "roar".freeze
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Sutterer".freeze]
  s.date = "2015-11-30"
  s.description = "Object-oriented representers help you defining nested REST API documents which can then be rendered and parsed using one and the same concept.".freeze
  s.email = ["apotonick@gmail.com".freeze]
  s.homepage = "http://rubygems.org/gems/roar".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Parse and render REST API documents using representers.".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<representable>.freeze, [">= 2.0.1", "< 2.4.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.10.1"])
      s.add_development_dependency(%q<test_xml>.freeze, ["= 0.1.6"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 5.4.2"])
      s.add_development_dependency(%q<sinatra>.freeze, [">= 0"])
      s.add_development_dependency(%q<sinatra-contrib>.freeze, [">= 0"])
      s.add_development_dependency(%q<virtus>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_development_dependency(%q<json>.freeze, [">= 0"])
    else
      s.add_dependency(%q<representable>.freeze, [">= 2.0.1", "< 2.4.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0.10.1"])
      s.add_dependency(%q<test_xml>.freeze, ["= 0.1.6"])
      s.add_dependency(%q<minitest>.freeze, [">= 5.4.2"])
      s.add_dependency(%q<sinatra>.freeze, [">= 0"])
      s.add_dependency(%q<sinatra-contrib>.freeze, [">= 0"])
      s.add_dependency(%q<virtus>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<representable>.freeze, [">= 2.0.1", "< 2.4.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.10.1"])
    s.add_dependency(%q<test_xml>.freeze, ["= 0.1.6"])
    s.add_dependency(%q<minitest>.freeze, [">= 5.4.2"])
    s.add_dependency(%q<sinatra>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra-contrib>.freeze, [">= 0"])
    s.add_dependency(%q<virtus>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
  end
end
