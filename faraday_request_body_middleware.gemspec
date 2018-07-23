# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_request_body_middleware/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday_request_body_middleware"
  spec.version       = FaradayRequestBodyMiddleware::VERSION
  spec.authors       = ["Case Taintor"]
  spec.email         = ["case.taintor@klarna.com"]
  spec.summary       = %q{Saves the request body on the Faraday environment hash.}
  spec.description   = %q{Saves the request body on the Faraday environment hash.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
