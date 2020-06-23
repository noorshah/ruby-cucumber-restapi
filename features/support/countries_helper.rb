class Countries_Helper


  def self.get_countries
    puts $ENVIRONMENT['staging']
    Faraday.get($ENVIRONMENT['staging'])
  end

  
  def self.response_jsonpath(response,customjsonpath)
    path=JsonPath.new(customjsonpath)
    path.on(response)
  end

  def self.get_countries_list(response)
    countries_list=response_jsonpath(response,'$[*]name')
  end

end