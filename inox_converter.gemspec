# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inox_converter/version'

Gem::Specification.new do |spec|
  spec.name          = "inox_converter"
  spec.version       = InoxConverter::VERSION
  spec.authors       = ["Lucas Andrade", "Júlio Xavier", "Gesiel Freitas", "Jhonatan Alves", "Nicácio Neto", "Vinícius Carvalho"]
  spec.email         = ["lucasandradeunb@gmail.com", "julioxavierr@gmail.com"]

  spec.summary       = "The ultimate converter gem"
  spec.description   = "Convert currency, temperature, lenght..."
  spec.homepage      = "https://rubygems.org/gems/inox_converter"
  spec.license       = "MIT"
  spec.files         = Dir["lib/**/*", "README.md"]


  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency(%q<activesupport>, ["~> 4.2"])
end
