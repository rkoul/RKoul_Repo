When /^I visit the Dominos home page$/ do
   visit('https://order.dominos.com/')
end

Then /^I should see the Dominos home page$/ do
   expect(page).to have_selector(:id, 'homePage')
   sleep 5
end

When(/^I click the "(.*?)" tab$/) do |tab|
  click_link('Order Online')
  sleep 5
end
 
Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

When(/^I fill the Address Information form$/) do
	select('House', :from => 'Address_Type')
	fill_in('Street', :with => 'Larks Terrace')
    fill_in('City', :with => 'Southriding')
    select('VA', :from => 'Region')
    fill_in('Postal_Code', :with => '20152')
    click_button('Continue')
    sleep 5
end

And(/^I click on the Speciality Pizza$/) do
   find('.navigation-Pizza').click
   sleep 5
end

And(/^I click on the Order link$/) do
  find(:xpath, '/html/body/div[2]/div[1]/div/div/section[1]/div/div[2]/a').click
  sleep 5
end

And(/^I click on Add to Order link$/) do 
  click_button('Add to Order')
  sleep 5
end

And(/^I click on Checkout link$/) do
  find(:xpath, '/html/body/div[2]/div[1]/aside/div[1]/div/div[2]/div[1]/a/span').click
  sleep 5
end

And(/^I click on Continue Checkout link$/) do
  find(:xpath, '/html/body/div[2]/div[2]/div/div/div/aside/a').click
  sleep 5
end
