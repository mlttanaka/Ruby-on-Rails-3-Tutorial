Feature: Signing In

  Scenario: Unsuccessful siginin
    Given a user visits the signin page
    When she submits invalid signin information
    Then she should see an error message

  Scenario: Successful signin
    Given a user visits the signin page
    And she has an account
    When she submits valid signin information
    Then she should see her profile page
    And she should see a signout link
