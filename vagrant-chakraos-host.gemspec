# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/chakraos/host/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-chakraos-host"
  spec.version       = Vagrant::Chakraos::Host::VERSION
  spec.authors       = ["Lionel Félicité"]
  spec.email         = ["deogracia@free.fr"]

  spec.summary       = %q{Host capabilities for Chakraos}
  spec.description   = %q{Add chakraos' host capabilities to vagrant.}
  spec.homepage      = "https://github.com/deogracia/vagrant-chakraos-host"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
