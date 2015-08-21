# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'file_io_client/version'

Gem::Specification.new do |spec|
  spec.name          = "file_io_client"
  spec.version       = FileIoClient::VERSION
  spec.authors       = ["Stefano Ordine"]
  spec.email         = ["stefano.ordine@gmail.com"]

  spec.summary       = %q{Provides a client to interact with http://file.io ephimeral upload service.}
  spec.homepage      = "https://github.com/StefanoOrdine/file_io_client"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"

  spec.add_runtime_dependency "json"
end
