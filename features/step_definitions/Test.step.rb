When /^I visit the Dominos home page$/ do
   visit('https://order.dominos.com/')
end

Then /^I should see the Dominos home page$/ do
   expect(page).to have_selector(:id, 'homePage')
   sleep 10
end

When(/^I click the "(.*?)" tab$/) do |tab|
  click_link('Order Online')
  sleep 10
end
 
Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

When(/^I fill the Address Information form$/) do
	select('House', :from => 'Address_Type')
	fill_in('Street', :with => '25199 Larks Terrace')
    fill_in('City', :with => 'Southriding')
    select('VA', :from => 'Region')
    fill_in('Postal_Code', :with => '20152')
    click_button('Continue')
    sleep 10
end

Then(/^I should see the Entrees Page$/) do
   expect(page).to have_selector(:id, 'entreesPage')
   sleep 10
end

