
@contact-us @regression
Feature: WebdriverUniversity - Contact Us Page


    Background: Pre conditions
        Given I navigate to the WebdriverUniversity homepage
        When I click on the Contact Us button

    Scenario: Valid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I type a email address
        And I type a comment
        And I click on the submit button
        Then I should be presented with a successful contact us submission message

    Scenario: Invalid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I type a comment
        And I click on the submit button
        Then I should be presented with a unsuccessful contact us submission message

    Scenario: Valid Contact Us Form Submission - Using specific data
        And I type a specific first name "Mike"
        And I type a specific last name "Woods"
        And I type a specific email address "mikewoods@email.com"
        And I type a specific word "Hello, we are in the year" and number 2024 within the comment input field
        And I click on the submit button
        Then I should be presented with a successful contact us submission message

    @smoke
    Scenario Outline: Valid Contact Us Page
        And I type a first name <firstName> and a last name '<lastName>'
        And I type a email address '<email>' and a comment '<comment>'
        And I click on the submit button
        Then I should be presented with a message '<message>'

        Examples:
            | firstName | lastName | email             | comment             | message                      |
            | Kamilla   | Faust    | kamilla@email.com | Hi, how are you?    | Thank You for your Message!  |
            | Mike      | Woods    | mike_woods        | Test1234 Teste56789 | Error: Invalid email address |
