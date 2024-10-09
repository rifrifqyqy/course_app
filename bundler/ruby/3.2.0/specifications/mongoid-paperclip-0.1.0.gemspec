# -*- encoding: utf-8 -*-
# stub: mongoid-paperclip 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid-paperclip".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael van Rooijen".freeze, "Joost Baaij".freeze]
  s.date = "2022-01-07"
  s.description = "Enables you to use Paperclip with the Mongoid ODM for MongoDB.".freeze
  s.email = ["michael@vanrooijen.io".freeze, "joost@spacebabies.nl".freeze]
  s.homepage = "https://github.com/mrrooijen/mongoid-paperclip".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Paperclip compatibility for Mongoid ODM for MongoDB.".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<kt-paperclip>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<mongoid>.freeze, [">= 0"])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
end
