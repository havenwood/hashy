# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashy/version'

Gem::Specification.new do |spec|
  spec.name          = 'hashy'
  spec.version       = Hashy::VERSION
  spec.authors       = ['Shannon Skipper']
  spec.email         = ['shannonskipper@gmail.com']
  spec.description   = %q{A Ruby gem implementing additional proposed methods for the Hash class: #map_pair, #map_key, #map_value}
  spec.summary       = %q{Hash#map_pair, Hash#map_key, and Hash#map_value}
  spec.homepage      = 'https://github.com/havenwood/hashy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  
  spec.signing_key = '/Users/shannonskipper/.gem/private/gem-private_key.pem'
  spec.cert_chain  = ['/Users/shannonskipper/.gem/private/gem-public_cert.pem']
end