# -*- encoding: utf-8 -*-
# stub: carrierwave-mongoid 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-mongoid".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonas Nicklas".freeze, "Trevor Turk".freeze]
  s.date = "2023-01-19"
  s.description = "Mongoid support for CarrierWave".freeze
  s.email = ["jonas.nicklas@gmail.com".freeze]
  s.homepage = "https://github.com/carrierwaveuploader/carrierwave-mongoid".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Mongoid support for CarrierWave".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0.8", "< 3"])
  s.add_runtime_dependency(%q<mongoid>.freeze, [">= 3.0", "< 9.0"])
  s.add_runtime_dependency(%q<mongoid-grid_fs>.freeze, [">= 1.3", "< 3.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
  s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
  s.add_development_dependency(%q<mini_magick>.freeze, [">= 0"])
  s.add_development_dependency(%q<pry>.freeze, [">= 0"])
end
