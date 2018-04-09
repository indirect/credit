require_relative "./lib/credit/version"

Gem::Specification.new do |spec|
  spec.name          = "credit"
  spec.version       = Credit::VERSION
  spec.authors       = ["Andre Arko"]
  spec.email         = ["andre@arko.net"]

  spec.summary       = %q{CRDT-based data structures}
  spec.description   = %q{CRDT-based data structures, inspired by crates.io/crates/ditto}
  spec.homepage      = "https://github.com/indirect/credit"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
