*** Settings ***
Documentation   Suite description

Library    SeleniumLibrary

Resource    ../../Resources/TestData/Config.robot
Resource    ../../Resources/TestData/Variables.robot

*** Keywords ***
Amaysim_TS01_CreditCardPayment
#Homepage
    SeleniumLibrary.open browser    ${Homepage_URL}    chrome    executable_path=${driver_path}
    maximize browser window
    click link    ${showAll}

#SIM Plan
    click element    ${SIMPlan}

#SIM Details
    click element    ${NewNumBtn}
    click element    ${PhysicalSIM}
    click element    ${CheckoutBtn}

#CustomerInfo
    wait until element is visible    ${CustomerInfoTextCheck}    30
    click element    ${NewCustomerBtn}
    Set Selenium Speed    0.5
    input text    ${FirstName}    TestFirst
    input text    ${LastName}     TestLast
    input text    ${DateOfBirth}    08/08/2008
    input text    ${Email}    TestEmail28@gmail.com
    input text    ${Passwd}    Testpwd08
    input text    ${PhoneNum}    0412345678
    input text    ${Address}    Level 6, 17-19 Bridge St, SYDNEY NSW 2000
    Press Keys    ${Address}   RETURN
    SLEEP    5
    Wait Until Element Is Visible    ${MOPBtn}
    click element    ${MOPBtn}
    click element    ${CustomerInfoT&C}
    click element    ${ConPaymentBtn}

#Credit Card Details
    Wait Until Element Is Visible    ${CardDetailsTextCheck}    60
    select frame    ${CardNumFrame}
    input text    ${CardNum}    4242 4242 4242 4242
    Unselect Frame
    select frame    ${ExpiryDateFrame}
    input text    ${ExpiryDate}     01/27
    Unselect Frame
    select frame    ${SecurityCodeFrame}
    input text    ${SecurityCode}    123
    Unselect Frame
    click element    ${CardInfoT&C}
    click element    ${PlaceOrderBtn}

#PaymentErrorMessage
    Wait Until Page Contains    Credit Card payment failed    60
    wait until element is visible    ${PaymentErrorMessage}    60
    Close window