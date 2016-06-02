# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faire/version'

Gem::Specification.new do |spec|
  spec.name          = "faire"
  spec.version       = Faire::VERSION
  spec.authors       = ["Michal Krzyzanowski"]
  spec.email         = ["michal.krzyzanowski+github@gmail.com"]
  spec.description   = %q{Manage application logic with Interactors}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/chaps-io/faire"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.8.1"
end
