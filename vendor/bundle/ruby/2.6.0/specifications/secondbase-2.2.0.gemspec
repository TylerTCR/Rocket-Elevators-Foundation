# -*- encoding: utf-8 -*-
# stub: secondbase 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "secondbase".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karle Durante".freeze, "Hunter Madison".freeze, "Ken Collins".freeze]
  s.date = "2021-09-03"
  s.description = "SecondBase provides support for Rails to manage dual databases by extending ActiveRecord tasks that create, migrate, and test your databases.".freeze
  s.email = ["kdurante@customink.com".freeze, "hunterglenmadison@icloud.com".freeze, "ken@metaskills.net".freeze]
  s.homepage = "http://github.com/customink/secondbase".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Seamless second database integration for Rails.".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.0"])
      s.add_development_dependency(%q<rake>.freeze, ["= 11.3.0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["= 1.3.13"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.0"])
      s.add_dependency(%q<rake>.freeze, ["= 11.3.0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, ["= 1.3.13"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.0"])
    s.add_dependency(%q<rake>.freeze, ["= 11.3.0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, ["= 1.3.13"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end
