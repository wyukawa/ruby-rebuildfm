# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rebuildfm/version'

Gem::Specification.new do |spec|
  spec.name          = "rebuildfm"
  spec.version       = Rebuildfm::VERSION
  spec.authors       = ["wyukawa"]
  spec.email         = ["wyukawa@gmail.com"]
  spec.summary       = %q{rebuildfm ruby client}
  spec.description   = %q{rebuildfm ruby client}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "nokogiri"
end
