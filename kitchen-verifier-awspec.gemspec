
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'kitchen/verifier/awspec_version'

Gem::Specification.new do |s|
  s.name          = 'kitchen-verifier-awspec'
  s.license       = 'Apache-2.0'
  s.version       = Kitchen::Verifier::AWSPEC_VERSION
  s.authors       = ['Neill Turner']
  s.email         = ['neillwturner@gmail.com']
  s.homepage      = 'https://github.com/neillturner/kitchen-verifier-awspec'
  s.summary       = 'Awspec verifier for Test-Kitchen'
  candidates = Dir.glob('{lib}/**/*') + ['README.md', 'kitchen-verifier-awspec.gemspec']
  s.files = candidates.sort
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.add_dependency 'test-kitchen', '~> 1.4'
  if RUBY_VERSION >= '2.0'
    s.add_dependency 'net-ssh', '~> 3'
  else
    s.add_dependency 'json', '~> 1.8'
    s.add_dependency 'net-ssh', '~> 2.9'
    s.add_dependency 'rubocop', '~> 0.41.2'
  end
  s.description = <<-EOF
Awspec verifier for Test-Kitchen
EOF
end
