
@login @regression
Feature: WebdriverUniversity - Login Portal


    Scenario Outline: Validate valid and invalid login credentials
        Given I navigate to the WebdriverUniversity homepage
        When I click on the Login Portal button
        And I type a username <username>
        And I type a password <password>
        And I click on the Login button
        Then the message '<alert>' should be displayed

        Examples:
            | username  | password     | alert                |
            | webdriver | webdriver123 | validation succeeded |
            | webdriver | webdriver    | validation failed    |
            | Test      | login456     | validation failed    |