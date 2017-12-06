class Countries_Helper


  def self.get_countries
    puts $ENVIRONMENT['staging']
    RestClient.get($ENVIRONMENT['staging'])
  end

end