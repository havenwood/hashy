# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashy/version'

Gem::Specification.new do |spec|
  spec.name          = 'hashy'
  spec.version       = Hashy::VERSION
  spec.authors       = ['Shannon Skipper']
  spec.email         = ['shannonskipper@gmail.com']
  spec.description   = %q{Three proposed new methods for Hash: map_pair, map_key, and map_value.}
  spec.summary       = %q{A trivial implementation of three proposed methods for the Hash class: map_pair, map_key and map_value.}
  spec.homepage      = 'https://github.com/havenwood/hashy'
  spec.license       = 'MIT'
  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ['lib']
  spec.add_development_dependency 'rake', '~> 10.3'
end
