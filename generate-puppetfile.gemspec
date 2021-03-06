require 'date'
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'generate_puppetfile/version'

Gem::Specification.new do |s|
  s.name                  = 'generate-puppetfile'
  s.version               = GeneratePuppetfile::VERSION
  s.date                  = Date.today.to_s
  s.summary               = 'Generate a Puppetfile'
  s.description           = 'Generate a Puppetfile for use with r10k based on an existing file or a list of modules.'
  s.authors               = ['Rob Nelson', 'Joseph Yaworski']
  s.email                 = 'rnelson0@gmail.com'
  s.executables           = %w( generate-puppetfile )
  s.files                 = ['bin/generate-puppetfile']
  s.files                += %w( README.md )
  s.files                += Dir.glob('lib/**/*')
  s.homepage              = 'https://github.com/rnelson0/puppet-generate-puppetfile'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'colorize'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'rspec-its', '~> 1'
  s.add_development_dependency 'json', '~> 1'
  s.add_development_dependency 'puppet'
  s.add_development_dependency 'rubocop', '0.39.0'
  s.add_development_dependency 'github_changelog_generator'
  s.add_development_dependency 'multi_json' # For some reason, github_changelog_generator requires this but does not include it
end
