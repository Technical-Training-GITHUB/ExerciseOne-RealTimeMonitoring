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
Get Data
    ${rowCount}=        Get Element Count    //table/tbody/tr
     FOR   ${row}    IN RANGE   1     ${rowCount}+1
    \      Run Keyword And Return Status      Record Data in CSV   ${row}
    END

Record Data in CSV
    [Arguments]  ${iRow}
    ${dateTime}                       DateTime.Get Current Date        result_format=%m-%d-%Y,
    append to file                    Exercise1_result.csv                        ${dateTime}
    FOR     ${index}                  IN RANGE                         1                                   11
    \       ${temp}                   Get Text                         //table/tbody/tr[${iRow}]/td[${index}]
    \       ${temp}                   Catenate                         ${temp},
    \       append to file            Exercise1_result.csv              ${temp}
    END
    Append to file                    Exercise1_result.csv               \n