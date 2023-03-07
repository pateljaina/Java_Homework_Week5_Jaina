Feature: Nopcommerce Registration

  As a User I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration Page
    Given  I open the Google Chrome Browser
    When   I open the URL http://demo.nopcommerce.com/register
    Then   I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When  I enter First Name "<First Name>"
    And   I enter Last Name "<Last Name>"
    And   I enter Email Address "<Email>"
    And   I enter Password "<Password>"
    And   I enter Confirm Password "<Confirm Password>"
    And   Click on Register button
    Then  I can see an error message "<Error Message>"
    And   I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | Error Message                              |
      | ""         | Bakshi    | Bakshi@gmail.com | 456897   | 456897           | Please enter First Name                    |
      | Rohan      | ""        | Bakshi@gmail.com | 456897   | 456897           | Please enter Last Name                     |
      | Rohan      | Bakshi    | ""               | 456897   | 456897           | Please enter Valid Email                   |
      | Rohan      | Bakshi    | Bakshi@gmail.com | ""       | 456897           | Password is Required                       |
      | Rohan      | Bakshi    | Bakshi@gmail.com | 456897   | ""               | Confirm password is required               |
      | Rohan      | Bakshi    | Bakshi@gmail.com | 456897   | 45689            | Password and confirm password do not match |
      | Rohan      | Bakshi    | Bakshi@gmail.com | 45689    | ""               | Minimum 6 character password is required   |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from Gender Label of Your Personal Details Section
    Given I am on Gender Label of Your Personal detail section
    When  I select "Male" radio buttons
    And   I select "Female" radio buttons
    Then  I am able to select any one of the radio buttons

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
    Given I am on Date of Birth field of your Personal Detail section
    When  I select day "<Day>"
    And   I select month "<Month>"
    And   I select year "<Year>"
    Then  I am able to select Day, Month and year from drop down list

    Examples:
      | Day | Month    | Year
      | 11  | November | 1989

  Scenario Outline: I should be able to check and uncheck the Newsletter box on Options section
    Given I am on Newsletter label on options selection
    When  I click on Newsletter checkbox
    And   I again click on Newsletter checkbox
    Then  I was able to check and uncheck the box next to Newsletter label

  Scenario Outline: I should be able to register with valid mandatory (*) field data on registration page
    When I enter First Name "Rohan"
    And  I enter Last Name "Bakshi"
    And  I enter Email "Bakshi@gmail.com"
    And  I enter Password "456897"
    And  I enter Confirm Password "456897"
    And  I click on Register Button
    Then I was able to register successfully














