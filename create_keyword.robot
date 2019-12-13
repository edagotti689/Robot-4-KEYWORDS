*** Settings ***
Documentation    To know how to create keywords

*** Test Cases ***
testcase:1
    Addition

testcase:2
    Subtraction    10   4

testcase:3
    ${RV}    Multiplication    5    10
    Log      Multiplication OF 5 * 10 = ${RV}    ERROR

*** Keywords ***
Addition
    [Documentation]   Keyword without arguments
    ${SUM}    Evaluate    5 + 5
    Log    SUM OF 5 + 5 = ${SUM}    ERROR

Subtraction
    [Arguments]    ${A}    ${B}
    [Documentation]   Keyword with arguments
    ${SUB}    Evaluate    ${A} - ${B}
    Log    Subtraction OF ${A} - ${B} = ${SUB}    WARN

Multiplication    [Arguments]    ${A}    ${B}
    [Documentation]   Keyword with arguments and return statement
    ${R}    Evaluate    ${A} * ${B}
    [Return]    ${R}
    Return From Keyword    ${R}ok
    Return From Keyword If    2 == 2   ${R}