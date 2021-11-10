# frozen_string_literal: true

require_relative 'lib/warframe/version'

Gem::Specification.new do |spec|
  spec.name = 'warframe'
  spec.version = Warframe::VERSION
  spec.authors = ['A.J. Romaniello']
  spec.email = ['ajiellodev@gmail.com']

  spec.summary = 'A Ruby interface to the WarframeStat API.'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/aj-rom/warframe-ruby'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.bindir = 'exe'
  spec.require_paths = ['lib']

  spec.add_dependency 'dry-struct', '~> 1.4'
  spec.add_dependency 'http', '~> 5.0', '>= 5.0.4'
  spec.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.31'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
end
