*** Settings ***
Library         DateTime
Library         SeleniumLibrary
Library         String

*** Variables ***
${URL}                  https://www.sehatq.com/
${HEADLESS}            ${True}
${RECEIPT_URL}         ${URL}
${BROWSER}             firefox

*** Keywords ***
Start Browser
    [Documentation]    Opens browser with configured options
    ${options}=     Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    Run Keyword If    ${HEADLESS}    Call Method    ${options}    add_argument    -headless
    Open Browser    ${RECEIPT_URL}    ${BROWSER}    options=${options}
    Set Selenium Speed    0.1s