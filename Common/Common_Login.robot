*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BTN_LOGIN}    xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/button
${TXT_USERNAME}  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[1]/input
${TXT_PASSWORD}  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[2]/div/input
${BTN_STOCK}   xpath=xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/a
${BTN_REALTIMEMONITORING}   xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/div/a[1]

*** Keywords ***

Click LoginBtn
    Click Button  ${BTN_LOGIN}

Enter Username  [Arguments]  ${username}
    Wait Until Page Contains Element  ${TXT_USERNAME}
    Input Text    ${TXT_USERNAME}  ${username}

Enter Password  [Arguments]  ${password}
    Wait Until Page Contains Element  ${TXT_PASSWORD}
    Input Password    ${TXT_PASSWORD}  ${password}
