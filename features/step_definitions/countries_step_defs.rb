Given(/^I call countries of the world$/) do
@response =  Countries_Helper.get_countries
end

Then(/^I should get response (\d+)$/) do |response_code|
@response.code== response_code
end
