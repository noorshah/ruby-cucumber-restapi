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

Given('I call information for italy') do
  @italy_info=Countries_Helper.get_italy_info
  
end
  

Then('its schema should be correct') do
  @validation_errors=JSON::Validator.fully_validate('features/support/italy_schema.json', @italy_info.body)
  expect(@validation_errors).to be_empty, @validation_errors.join("\n")
end