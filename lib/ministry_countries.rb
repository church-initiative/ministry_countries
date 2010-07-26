require 'yaml'

module MinistryCountries

  COUNTRIES = YAML.load_file(File.join(File.dirname(__FILE__), '../data/countries.yml'))
  
  def self.countries
    country_array = []
    COUNTRIES.each { |k,v| country_array << [v['name'],k] }
    return country_array.sort!
  end
  
  def self.codes
    codes_array = []
    COUNTRIES.each_key { |k| codes_array << k }
    return codes_array.sort!
  end
  
  def self.name(country_code)
    COUNTRIES[country_code]['name'] unless COUNTRIES[country_code].nil?
  end
  
  def self.currency(country_code)
    COUNTRIES[country_code]['currency'] unless COUNTRIES[country_code].nil?
  end
  
  def self.states(country_code = nil)
    if country_code.nil?
      state_array = []
      COUNTRIES.reject { |k,v| v['states'].nil? }.each_value { |v| state_array += v['states'] }
      return state_array.sort!
    else
      COUNTRIES[country_code]['states'] unless COUNTRIES[country_code].nil?
    end
  end
  
end