*** Settings ***
Documentation    Get Data From Table
Library          Collections
Library          String
Library          SeleniumLibrary
Library          CSVLibrary
Library          CSVLib
Library          Operating System
Library          DateTime

*** Variables ***

*** Keywords ***
Get Data Values
    [Arguments]     ${iRow}
    ${dateTime}                      DateTime.Get Current Date         result_format=[%m-%d-%Y]
    Append To File                     RealTimeMonitoring.csv          ${dateTime}
    FOR     ${index}                        IN RANGE                   1                           11
    \        ${temp}                         Get Text                  //table/tbody/tr[${iRow}]/td[${index}]
    \        ${temp}                         Catenate                  ${temp},
    \        Append To File           RealTimeMonitoring.csv           ${temp}
    END
    Append To File                     RealTimeMonitoring.csv          \n




