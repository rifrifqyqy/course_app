# -*- encoding: utf-8 -*-
# stub: ckeditor 5.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "ckeditor".freeze
  s.version = "5.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Igor Galeta".freeze]
  s.date = "2024-07-17"
  s.description = "CKEditor is a WYSIWYG editor to be used inside web pages".freeze
  s.email = "galeta.igor@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "https://github.com/galetahub/ckeditor".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Rails gem for easy integration ckeditor in your application".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<orm_adapter>.freeze, ["~> 0.5.0"])
end
