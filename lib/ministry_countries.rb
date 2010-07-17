require 'yaml'

module MinistryCountries

  COUNTRIES = YAML.load_file(File.join(File.dirname(__FILE__), '../data/countries.yml'))
  
  def self.countries
    COUNTRIES.map {|c| [c[0], c[1]]}
  end
  
  def self.name(country_code)
    return nil if COUNTRIES.nil?
    COUNTRIES.each do |c|
      return c[0] if c[1] == country_code
    end
    nil
  end
  
  def self.currency(country_code)
    return nil if COUNTRIES.nil?
    COUNTRIES.each do |c|
      return c[2] if c[1] == country_code
    end
    nil
  end
  
  def self.states(country_code = nil)
    return nil if COUNTRIES.nil?
    if country_code.nil?
      COUNTRIES.map {|c| c[3] }.compact.flatten.sort
    else
      COUNTRIES.each do |c|
        return c[3] if c[1] == country_code
      end
    end
  end
  
end