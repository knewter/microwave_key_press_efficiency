# coding: utf-8
require File.expand_path("../lib/microwave_key_press_efficiency/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "microwave_key_press_efficiency"
  spec.version       = MicrowaveKeyPressEfficiency::VERSION
  spec.authors       = ["Uģis Ozols"]
  spec.email         = ["ugis.ozolss@gmail.com"]
  spec.description   = %q{Calculate the most effecient way of how to press keys
                          on your microwave when you setup a time.}
  spec.summary       = %q{Based on http://www.rubyquiz.com/quiz118.html}
  spec.homepage      = "http://ugisozols.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13"
end
