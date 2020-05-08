*** Settings ***
Resource  ../Common/Common_Login.robot
Resource  ../Common/Common_Stocktab.robot
Resource  ../Common/Common_Table.robot
Resource  ../Common/Common_Keywords.robot
Library  OperatingSystem
Library  String
Library  Collections
Library  CSVLib
Library  CSVLibrary
Library

Test Setup  Open Browser Test Setup  https://www.investagrams.com/Login/

*** Keywords ***

*** Test Cases ***
TST-003
    [Documentation]  Test shows that user successfully get csv file
    [Tags]  Successful Get of CSV file
    Enter Username    rueljsaunar@yahoo.com
    Enter Password    77gsitechteam
    Click LoginBtn
    Click Stock
    Click RTM
    Get Data
