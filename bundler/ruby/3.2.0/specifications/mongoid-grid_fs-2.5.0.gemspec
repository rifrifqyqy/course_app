# -*- encoding: utf-8 -*-
# stub: mongoid-grid_fs 2.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid-grid_fs".freeze
  s.version = "2.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ara T. Howard".freeze]
  s.date = "2023-01-19"
  s.description = "A pure Mongoid/Moped implementation of the MongoDB GridFS specification".freeze
  s.email = ["ara.t.howard@gmail.com".freeze]
  s.homepage = "https://github.com/mongoid/mongoid-grid_fs".freeze
  s.licenses = ["Ruby".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "A MongoDB GridFS implementation for Mongoid".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
  s.add_development_dependency(%q<mongoid-danger>.freeze, ["~> 0.2"])
  s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  s.add_development_dependency(%q<rails>.freeze, [">= 0"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.36.0"])
  s.add_runtime_dependency(%q<mime-types>.freeze, [">= 1.0", "< 4.0"])
  s.add_runtime_dependency(%q<mongoid>.freeze, [">= 3.0", "< 9.0"])
end
