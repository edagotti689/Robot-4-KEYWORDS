*** Settings ***
Documentation    To know how to create keyword with default arguments

*** Test Cases ***
testcase:1
    Addition    B=10    A=6

*** Keywords ***
Addition
    [Arguments]    ${A}    ${B}
    Log    A value is :: ${A}    WARN
    Log    B value is :: ${B}    WARN
