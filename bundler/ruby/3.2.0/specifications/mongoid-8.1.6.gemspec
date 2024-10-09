# -*- encoding: utf-8 -*-
# stub: mongoid 8.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid".freeze
  s.version = "8.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://jira.mongodb.org/projects/MONGOID", "changelog_uri" => "https://github.com/mongodb/mongoid/releases", "documentation_uri" => "https://www.mongodb.com/docs/mongoid/", "homepage_uri" => "https://mongoid.org/", "source_code_uri" => "https://github.com/mongodb/mongoid" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["The MongoDB Ruby Team".freeze]
  s.date = "2024-09-20"
  s.description = "Mongoid is an ODM (Object Document Mapper) Framework for MongoDB, written in Ruby.".freeze
  s.email = "dbx-ruby@mongodb.com".freeze
  s.homepage = "https://mongoid.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Elegant Persistence in Ruby for MongoDB.".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.1", "< 7.3", "!= 7.0.0"])
  s.add_runtime_dependency(%q<mongo>.freeze, [">= 2.18.0", "< 3.0.0"])
  s.add_runtime_dependency(%q<concurrent-ruby>.freeze, [">= 1.0.5", "< 2.0"])
  s.add_runtime_dependency(%q<ruby2_keywords>.freeze, ["~> 0.0.5"])
  s.add_development_dependency(%q<bson>.freeze, [">= 4.14.0", "< 5.0.0"])
end
