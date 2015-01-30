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
	fill_in('Street', :with => '25199 Larks Terrace')
    fill_in('City', :with => 'Southriding')
    select('VA', :from => 'Region')
    fill_in('Postal_Code', :with => '20152')
    sleep 5
end

And(/^I click on the Continue link$/) do 
  click_button('Continue')
  sleep 5
  end

Then(/^I am on the Entrees page$/) do
  expect(page).to have_selector(:xpath, './/*[@id="js-mainSiteNavigation"]/ul/li[2]/a')
  sleep 5
end

When(/^I click on the Speciality Pizza$/) do
   find('.navigation-Pizza').click
   sleep 5
end

And(/^I click on the Order link$/) do
  find(:xpath, './/*[@id="categoryPage2"]/section[1]/div/div[2]/a').click
  sleep 5
end

And(/^I click on Add to Order link$/) do 
  click_button('Add to Order')
  sleep 5
end 

And(/^I click on Checkout link$/) do
  find(:xpath, './/*[@id="orderSummaryInColumn"]/div[2]/div[1]/a/span').click
  sleep 5
end

Then(/^I should see the generic Overlay$/) do
  expect(page).to have_selector(:xpath, './/*[@id="genericOverlay"]/div/div[2]')
  sleep 5
end

And(/^I click on close the dialog box$/) do
  find(:xpath, './/*[@id="genericOverlay"]/div/a').click
end
 
And(/^I click on Continue Checkout link$/) do
  find(:xpath, './/*[@id="js-checkoutColumns"]/aside/a').click
  sleep 5
end

Then(/^I should see the Place Order page$/) do
expect(page).to have_selector(:id, 'orderPaymentPage')
sleep 5
end

And(/^I Check the quantity of the 'Spinach & Feta' pizza$/) do
  expected = find(:xpath, './/*[@id="orderPaymentPage"]/form/div[2]/div/div[2]/div/table[2]/tbody/tr/td[2]').native.text
  expect(expected).to eq('1')
  sleep 5
end

And(/^I Check the Total Amount$/) do
  expected = find.(:xpath, './/*[@id="orderPaymentPage"]/form/div[2]/div/div[2]/div/div/div[2]/table/tbody/tr[4]/td[2]').native.text
  expect(expected).to eq('$13.09')       
  sleep 5
end

