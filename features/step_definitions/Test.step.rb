When /^I visit the Dominos home page$/ do
   visit('https://order.dominos.com/')
end

Then /^I should see the Dominos home page$/ do
   expect(page).to have_selector(:id, 'homePage')
end

When(/^I click the "(.*?)" tab$/) do |tab|
  click_link('Order Online')
end
 
Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end
