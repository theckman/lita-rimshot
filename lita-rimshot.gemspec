# -*- coding: UTF-8 -*-
require 'English'

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'lita-rimshot/version'

Gem::Specification.new do |g|
  g.name        = 'lita-rimshot'
  g.version     = LitaRimshot::VERSION
  g.date        = Time.now.strftime('%Y-%m-%d')
  g.description = 'Lita plugin for generating a rimshot'
  g.summary     = 'Lita + InstantRimshot'
  g.authors     = ['Tim Heckman']
  g.email       = 'tim@timheckman.net'
  g.homepage    = 'https://github.com/theckman/lita-rimshot'
  g.license     = 'MIT'
  g.required_ruby_version = '>= 2.0.0'
  g.metadata = { 'lita_plugin_type' => 'handler' }

  g.test_files  = %x(git ls-files spec/*).split
  g.files       = %x(git ls-files).split

  g.add_development_dependency 'bundler', '~> 1.5'
  g.add_development_dependency 'rake', '~> 10.2.2'
  g.add_development_dependency 'rubocop', '~> 0.19.1'
  g.add_development_dependency 'rspec', '>= 3.0.0.beta2'
  g.add_development_dependency 'fuubar', '~> 1.3.2'
  g.add_development_dependency 'coveralls', '~> 0.7.0'
  g.add_development_dependency 'simplecov', '~> 0.8.2'

  g.add_runtime_dependency 'lita', '>= 3.0.0'
end
