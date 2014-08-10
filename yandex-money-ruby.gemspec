# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex/money/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex-money-ruby"
  spec.version       = Yandex::Money::Ruby::VERSION
  spec.authors       = ["Alexander Maslov"]
  spec.email         = ["drakmail@delta.pm"]
  spec.summary       = %q{Yandex money API for ruby.}
  spec.homepage      = "http://github.com/drakmail/yandex-money-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
