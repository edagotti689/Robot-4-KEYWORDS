*** Settings ***
Documentation    To know how to create keyword with default arguments

*** Test Cases ***
testcase:1
    Addition    80    7

*** Keywords ***
Addition
    [Arguments]    ${A}=20    ${B}=15
    Log    A value is :: ${A}    WARN
    Log    B value is :: ${B}    WARN
