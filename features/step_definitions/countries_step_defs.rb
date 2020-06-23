Given(/^I call countries of the world$/) do
  @response =  Countries_Helper.get_countries
end

Then(/^I should get response (\d+)$/) do |response_code|
  @response.status== response_code
end
  
Then(/^I should see (.*) in the response$/) do|country|
  @countries_list=Countries_Helper.get_countries_list(@response.body)
  expect(@countries_list).to include(country)
 end