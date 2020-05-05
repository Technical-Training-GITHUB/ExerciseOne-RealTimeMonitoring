*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Stock_Tab}  xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/a
${Real_TimeMonitoring_SubTab}  xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/div/a[1]
*** Keywords ***

Click Stock
    Wait Until Page Contains Element  ${Stock_Tab}
    Click Element   ${Stock_Tab}

Click RTM
      Sleep  2s
     Click Element  ${Real_TimeMonitoring_SubTab}