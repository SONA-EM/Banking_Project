*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    Open browser  ${SiteUrl}        ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]  ${Username}
    Input Text  ${txt_loginUserId}  ${Username}

Enter Password
    [Arguments]  ${Password}
    Input Text  ${txt_loginPassword}    ${Password}

Click login
    click button    ${click_loginButton}

Verify Successful Login
    title should be  Guru99 Bank Manager HomePage

Close Browser
    Close all Browsers






