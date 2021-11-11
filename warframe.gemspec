# frozen_string_literal: true

require_relative 'lib/warframe/version'

Gem::Specification.new do |spec|
  # Required
  spec.name = 'warframe'
  spec.version = Warframe::VERSION
  spec.authors = ['A.J. Romaniello']

  # Descriptive
  spec.summary = 'A Ruby interface to the WarframeStat API.'
  spec.description = spec.summary
  spec.license = 'MIT'
  spec.homepage = 'https://github.com/aj-rom/warframe-ruby'

  # MetaData
  spec.metadata['source_code_uri'] = 'https://github.com/aj-rom/warframe-ruby'
  spec.metadata['bug_tracker_uri'] = "#{spec.metadata['source_code_uri']}/issues"
  spec.metadata['documentation_uri'] = "https://rubydoc.info/gems/#{spec.name}/#{spec.version}"

  # Executables / Files
  spec.bindir = 'exe'
  spec.require_paths = ['lib']

  # Dependencies
  spec.required_ruby_version = '>= 2.5.0'
  spec.add_runtime_dependency 'fast_underscore', '~> 0.3.2'
  spec.add_runtime_dependency 'http', '~> 5.0', '>= 5.0.4'
  spec.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.31'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'yard', '~> 0.9.26'
end
