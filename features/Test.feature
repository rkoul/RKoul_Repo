Feature: Order Dominos Pizza Online
 We want to step through a simple scenario for training

@home
Scenario: Check the Dominos home page
 When I visit the Dominos home page
 Then I should see the Dominos home page

@OrderPizza
Scenario: Location Search for Dominos Pizza
  Given I visit the Dominos home page
  When I click the "Order Online" tab
  Then I should see the Dominos Location Search page
  When I fill the Address Information form
  And  I click on the Speciality Pizza
  And  I click on the Order link 
  And  I click on Add to Order link
  And  I click on Checkout link
  And  I click on Continue Checkout link

