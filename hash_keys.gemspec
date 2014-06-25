# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "hash_keys"
  spec.version       = '1.0.2'
  spec.authors       = ["Adam Whittingham"]
  spec.email         = ["adam.whittingham@gmail.com"]
  spec.summary       = 'Adds commonly duplicated key select/reject code to Hash'
  spec.description   = 'Adds commonly duplicated key select/reject code to Hash'
  spec.homepage      = "https://github.com/AdamWhittingham/hash_keys"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
