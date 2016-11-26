Gem::Specification.new do |spec|
  spec.name          = "pendragon-radix"
  spec.version       = '0.0.1'
  spec.authors       = ["namusyaka"]
  spec.email         = ["namusyaka@gmail.com"]

  spec.summary       = %q{high performance HTTP routing by using radix tree}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/namusyaka/pendragon-radix"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'r2ree'
  spec.add_runtime_dependency 'pendragon', '~> 1.0.0'
end
