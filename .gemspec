# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ut/style_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "ut-rubocop-rails"
  spec.version       = UT::StyleRails::Version::VERSION
  spec.authors       = ["Justin Aiken"]
  spec.email         = ["jaiken@usertesting.com"]
  spec.description   = %q{UT Rubocop Rails}
  spec.summary       = %q{UserTesting's rubocop rules for Rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).reject { |f| f.match(%r{^(spec|doc)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop",       "0.82.0"
  spec.add_dependency "rubocop-rails", "2.0.1"
end
