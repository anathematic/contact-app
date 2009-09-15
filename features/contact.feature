Feature: Contact
  In order to deliver messages to the site administrator
  As a user
  I want fill out forms and send them off to the site administrator
  
  Background:
    Given I am on the homepage
    
  Scenario: I can send a message to the site administrator using the contact form
    When I follow "Contact"
    And I fill in "Name" with "Thomas"
    And I fill in "Email" with "fake@domain.com"
    And I fill in "Message" with "Thanks for being you"
    And I press "Send Message"
    Then I should see "Successfully Sent Message!"
    And "fake@domain.com" should receive an email
    And "admin@domain.com" should receive an email
  
  
  

  
