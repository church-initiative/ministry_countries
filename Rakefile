require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('ministry_countries', '0.1.0') do |p|
  p.description    = "Countries, codes, currencies and states/provinces."
  p.url            = ""
  p.author         = "Jeremy Smith"
  p.email          = "jsmith@churchinitiative.org"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }