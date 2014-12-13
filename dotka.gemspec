require_relative "lib/dotka"

Gem::Specification.new do |spec|
	spec.name = 'dotka'
	spec.version = Dotka.version
	spec.date = '2014-12-11'
	spec.summary = 'Dota 2 WebAPI Wrapper'
	spec.description = 'Makes interaction with Dota 2 WebAPI easy'
	spec.authors = ['bound1ess']
	spec.email = 'bound1ess.dev@gmail.com'
	spec.files = Dir['lib/**/*.rb'] + Dir['spec/*.rb'] + Dir['data/*.json']
	spec.test_files = spec.files.grep(%r{^spec/})
	spec.license = 'MIT'
	spec.homepage = 'https://github.com/bound1ess/dotka'
	spec.required_ruby_version = '>= 2.0.0'
	spec.add_dependency 'json', '~> 1.8', '>= 1.8.1' 
	spec.add_dependency 'rest-client', '~> 1.7', '>= 1.7.2'
	spec.add_development_dependency 'rspec', '~> 3.1', '>= 3.1.0'
end
