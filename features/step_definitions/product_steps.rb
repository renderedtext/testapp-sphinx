Given /^I am on the products page$/ do
  visit products_path
end

Given /^there is a product "(.*?)"$/ do |name|
  Product.create!(:name => name, :price => 150)
end

Given /^my indexes are up to date$/ do
  ThinkingSphinx::Test.index
  sleep 0.25
end

When /^I search for "(.*?)"$/ do |name|
  fill_in "search", :with => name
  click_button "Search"
end

Then /^I should see "(.*?)"$/ do |string|
  expect(page).to have_content(string)
end

Then /^I shouldn't see "(.*?)"$/ do |string|
  expect(page).to_not have_content(string)
end
