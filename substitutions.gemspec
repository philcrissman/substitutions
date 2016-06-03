# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'substitutions/version'

Gem::Specification.new do |spec|
  spec.name          = "substitutions"
  spec.version       = Substitutions::VERSION
  spec.authors       = ["Phil Crissman"]
  spec.email         = ["philcrissman@gmail.com"]

  spec.summary       = %q{Do the substitutions from xkcd.com/substitutions(_2|_3)?\.png}
  spec.description   = %q{Takes some text and does the substitutions from xkcd.com/substitutions(_2|_3)?\.png }
  spec.homepage      = "http://github.com/philcrissman/substitutions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
