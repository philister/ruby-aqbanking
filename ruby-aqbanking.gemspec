# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = "ruby-aqbanking"
  spec.version       = '0.0.1'
  spec.authors       = ["philister"]
  spec.email         = ["philipp.albig@pictrs.com"]
  spec.description   = %q{A ruby-wrapper for the aq_banking lib}
  spec.summary       = %q{A ruby-wrapper for the aq_banking lib}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
