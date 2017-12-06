class Countries_Helper

  def self.get_countries
    RestClient.get('https://restcountries.eu/rest/v2/all')
  end

end