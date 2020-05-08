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
 ${dateColumn}    Date

*** Keywords ***
Get Data
      ${index1}=   Catenate        ${dateColumn}    ,
      append to file                Exercise1_result.csv    ${index1}
       @{ITEMS}    Create List    1   5   7  6  2  9
      FOR    ${index}    IN    @{ITEMS}
      \   ${temp1}                   Get Text                        //table/thead/tr[1]/td[${index}]
      \   ${temp1}                   Catenate                         ${temp1},
      \   append to file            Exercise1_result.csv              ${temp1}
      END
      Append to file                    Exercise1_result.csv               \n
    ${rowCount}=        Get Element Count    //table/tbody/tr
     FOR   ${row}    IN RANGE   1    ${rowCount}+1
     \      Run Keyword And Return Status      Record Data in CSV   ${row}
     END

Record Data in CSV
     [Arguments]  ${iRow}
      ${dateTime}                       DateTime.Get Current Date        result_format=%m-%d-%Y,
      append to file                    Exercise1_result.csv                        ${dateTime}
      @{ITEMS}    Create List    1   5   7  6  2  9
      FOR    ${index}    IN    @{ITEMS}
      \       ${temp}                   Get Text                         //table/tbody/tr[${iRow}]/td[${index}]
      \       ${temp}                   Catenate                         ${temp} ,
      \       append to file            Exercise1_result.csv              ${temp}
      END
      Append to file                    Exercise1_result.csv               \n


