*** Settings ***
Documentation    Suite description
Library           Selenium2Library
*** Test Cases ***
Log out
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test