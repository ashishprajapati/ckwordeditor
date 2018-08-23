# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ckwordeditor/version"

Gem::Specification.new do |s|
  s.name = "ckwordeditor"
  s.version = Ckwordeditor::Version::GEM.dup
  s.platform = Gem::Platform::RUBY
  s.summary = "Rails gem for lovely integration of word interface for ckeditor in your application"
  s.description = "This gem allows you to paste content from Microsoft Word and maintain original content formatting. It uploads the images present on the Microsoft Word automatically."
  s.authors = ["Ashish Prajapati"]
  s.email = "mail@ashishprajapati.com"
  s.licenses = ["MIT"]
  s.homepage = "https://github.com/ashishprajapati/ckwordeditor"
  s.files = Dir["{app,config,lib,vendor}/**/*"] + ["MIT-LICENSE", "Gemfile", "README.md"]
  s.test_files = Dir["{test}/**/*"]
  s.extra_rdoc_files = ["README.md"]
  s.require_paths = ["lib"]
  s.add_dependency "ckeditor", "~> 4.2", ">= 4.2.4"
end
