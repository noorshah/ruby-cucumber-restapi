class Countries_Helper


  def self.get_countries
    Faraday.get($ENVIRONMENT['staging']+$ENVIRONMENT['all_countries'])
  end

  
  def self.response_jsonpath(response,customjsonpath)
    path=JsonPath.new(customjsonpath)
    path.on(response)
  end

  def self.get_countries_list(response)
    countries_list=response_jsonpath(response,'$[*]name')
  end

  def self.get_italy_info
    Faraday.get($ENVIRONMENT['staging']+$ENVIRONMENT['italy'])
  end

end