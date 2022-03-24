# -*- encoding: utf-8 -*-
# stub: money_helper 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "money_helper".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sahil Yakhmi".freeze, "Joey Aghion".freeze, "Matt Zikherman".freeze, "Sarah Weir".freeze]
  s.date = "2019-04-19"
  s.description = "A simple module to assist in formatting unambiguous prices and price ranges in international currencies in a Roman Script context.".freeze
  s.email = "matt@artsymail.com".freeze
  s.homepage = "https://github.com/artsy/money_helper".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "MoneyHelper international price formatting utility.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<money>.freeze, ["~> 6.5"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<money>.freeze, ["~> 6.5"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
  end
end
