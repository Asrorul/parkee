*** Settings ***
Library         DateTime
Library         SeleniumLibrary
Library         String
Library         Collections
Resource        ../Config/env.robot

*** Variables ***
${BROWSER}             firefox
${RECEIPT_URL}         ${BASE_URL}/?l=${LOCATION_ID}&ps=${PARKING_SLIP}

*** Keywords ***
Start Browser
    [Documentation]    Opens browser with configured options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    Run Keyword If    ${HEADLESS}    Call Method    ${options}    add_argument    -headless
    Create Webdriver    Firefox    options=${options}
    Go To    ${RECEIPT_URL}
    Set Selenium Speed    0.1s