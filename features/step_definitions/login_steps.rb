Given("I am on the home page") do
  visit root_path
end

When("I click on the {string} button") do |string|
  page.should have_selector(:link_or_button, 'Log In')
end

Then("I should be on the {string} page") do |string|
  visit "/login"
end

Given("I am on the {string} page") do |string|
  visit "/orders"
end


When("I click the {string} button") do |string|
  page.should have_selector(:link_or_button, 'New order')
end


