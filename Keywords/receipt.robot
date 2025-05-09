*** Settings ***
Library    SeleniumLibrary

*** Keywords ***


Wait For Receipt Page
    [Documentation]    Waits for receipt page to load and verifies basic elements
    Wait Until Page Contains Element    id=receipt-pp-location-logo    10s
    Title Should Be    Receipt | PARKEE

Verify Receipt Details
    [Documentation]    Verifies all receipt details are present
    Click Element                  id=accordion-toggle
    Page Should Contain Element    id=receipt-locatioName
    Page Should Contain Element    id=receipt-totalAmount
    Page Should Contain Element    id=receipt-parkingSlipNumber
    Page Should Contain Element    id=receipt-ratingTitle
    Page Should Contain Element    id=receipt-vehicleNumber
    Page Should Contain Element    id=receipt-vehicleTypeAlias
    Page Should Contain Element    id=receipt-exitGateName
    Page Should Contain Element    id=receipt-entryTime
    Page Should Contain Element    id=receipt-exitTime
    Page Should Contain Element    id=receipt-duration
    Page Should Contain Element    id=receipt-insuranceType
    Page Should Contain Element    id=receipt-parkingFee
    Page Should Contain Element    id=receipt-insuranceFee
    Page Should Contain Element    id=receipt-priceSession
    Page Should Contain Element    id=receipt-overnightFee
    Page Should Contain Element    id=receipt-discountAmount
    Page Should Contain Element    id=receipt-promoAmount
    Page Should Contain Element    id=receipt-totalAmountDetails
    Page Should Contain Element    id=receipt-totalAmountByPaymentMethod
    Page Should Contain Element    id=button-share-receipt
    Page Should Contain Element    id=button-download-receipt
