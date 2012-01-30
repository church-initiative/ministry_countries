Gem::Specification.new do |gem|
  gem.name    = "ministry_countries"
  gem.version = "0.1.3"
  gem.date    = %q{2011-09-21}

  gem.summary = "Country data for Church Initiative apps"
  gem.description = "Countries, codes, currencies and states/provinces"

  gem.authors  = ['Jeremy Smith']
  gem.email    = 'jsmith@churchinitiative.org'
  gem.homepage = 'https://github.com/church-initiative/ministry_countries'

  gem.add_dependency('rake')

  gem.files = Dir['Rakefile', '{data,lib}/**/*', 'README*']
end