Feature: add a new order
  
  As a Customer
  So that I can easily make my order
  I want to be able to add to my order
  
Scenario: As a customer I want to be able to navigate from the home page to the new order form 
  Given I am on the Home Page
  When I click on the "Start Order" link
  Then I should on the "Listing orders" page
  When I click on the "New order" link
  Then I should be on the "New Order" page
  And I should see the "Name" field
  And I should see the "Request" field