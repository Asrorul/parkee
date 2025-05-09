*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/resource.robot
Resource    ../Keywords/receipt.robot
Resource    ../Config/env.robot
Test Setup          Start Browser
Test Teardown       Close Browser

*** Variables ***
${RECEIPT_URL}    ${BASE_URL}/?l=${LOCATION_ID}&ps=${PARKING_SLIP}

*** Test Cases ***
Validate Receipt UI Content
    Maximize Browser Window
    Wait For Receipt Page
    Verify Receipt Details