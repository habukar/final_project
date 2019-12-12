Feature: Add an order 
  
  As a customer I want to
  be able to place my order
  so I can get my items.
  
Scenario: As a customer I want to place an order
  Given I am on the "Listing orders" page
  When I click the "New order" button
  Then I should be on the "New Order" page