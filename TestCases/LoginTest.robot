*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeyword.robot


*** Variables ***
${Browser}      chrome
${SiteUrl}      http://www.demo.guru99.com/V4/
${Username}     mngr411157
${Password}     vajehEt

*** Test Cases ***
LoginTest

    Open my Browser  ${SiteUrl}     ${Browser}
    Enter username  ${Username}
    Enter Password  ${Password}
    Click login
    sleep  3 seconds
    Verify Successful Login
    Close Browser





