# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_boolean_toggle/version'

Gem::Specification.new do |gem|
  gem.name          = "rails_admin_boolean_toggle"
  gem.version       = RailsAdminBooleanToggle::VERSION
  gem.authors       = ["Sergey Malykh"]
  gem.email         = ["xronos.i.am@gmail.com"]
  gem.description   = %q{Boolean field behaviour replacement for rails admin}
  gem.summary       = %q{Replaces default boolean field behaviour with rails_admin_toggleable}
  gem.homepage      = "https://github.com/xronos-i-am/rails_admin_boolean_toggle"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "rails_admin_toggleable"

  gem.add_development_dependency "rails_admin_toggleable"
end