*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Library     OperatingSystem


Resource   ../../resources/Keywords/Amaysim_TS01_CreditCardPaymentFailed.robot

*** Variables ***
${Homepage_URL}  https://www.amaysim.com.au/
${BROWSER}  CHROME
${driver_path}  /Users/hazelignacio/Downloads/chromedriver


*** Keywords ***
Amaysim_TC01_CreditCardPayment_TS01_LoadHomepage
    SeleniumLibrary.open browser    ${Homepage_URL}    chrome    executable_path=${driver_path}
    maximize browser window

Amaysim_TC01_CreditCardPayment_TS02_ClickShowAllButton
    click link    ${showAll}

Amaysim_TC01_CreditCardPayment_TS03_Click7-dayPlanBuyNowButton
    click element    ${SIMPlan}

Amaysim_TC01_CreditCardPayment_TS04_SelectPickANewNumber
    click element    ${NewNumBtn}

Amaysim_TC01_CreditCardPayment_TS05_SelectPhysicalSIM
    click element    ${PhysicalSIM}

Amaysim_TC01_CreditCardPayment_TS06_ClickCheckoutButton
    click element    ${CheckoutBtn}

Amaysim_TC01_CreditCardPayment_TS07_SelectI'mANewCustomer
    wait until element is visible    ${CustomerInfoTextCheck}    30
    click element    ${NewCustomerBtn}

Amaysim_TC01_CreditCardPayment_TS08_InputCustomerName
    Set Selenium Speed    0.5
    input text    ${FirstName}    TestFirst
    input text    ${LastName}     TestLast

Amaysim_TC01_CreditCardPayment_TS09_InputCustomerDateOfBirth
    input text    ${DateOfBirth}    08/08/2008

Amaysim_TC01_CreditCardPayment_TS10_InputCustomerEmail
    input text    ${Email}    TestEmail28@gmail.com

Amaysim_TC01_CreditCardPayment_TS11_InputCustomerPasswd
    input text    ${Passwd}    Testpwd08

Amaysim_TC01_CreditCardPayment_TS12_InputCustomerPhoneNum
    input text    ${PhoneNum}    0412345678

Amaysim_TC01_CreditCardPayment_TS12_InputAddress
    input text    ${Address}    Level 6, 17-19 Bridge St, SYDNEY NSW 2000
    Press Keys    ${Address}   RETURN
    SLEEP    5

Amaysim_TC01_CreditCardPayment_TS13_SelectCreditCardMOP
    Wait Until Element Is Visible    ${MOPBtn}
    click element    ${MOPBtn}

Amaysim_TC01_CreditCardPayment_TS14_CheckCustomerInfoT&C
    click element    ${CustomerInfoT&C}
    click element    ${ConPaymentBtn}

Amaysim_TC01_CreditCardPayment_TS15_InputCardNumber
    Wait Until Element Is Visible    ${CardDetailsTextCheck}    60
    select frame    ${CardNumFrame}
    input text    ${CardNum}    4242 4242 4242 4242
    Unselect Frame

Amaysim_TC01_CreditCardPayment_TS16_InputExipryDate
    select frame    ${ExpiryDateFrame}
    input text    ${ExpiryDate}     01/27
    Unselect Frame


Amaysim_TC01_CreditCardPayment_TS17_InputSecurityNumber
    select frame    ${SecurityCodeFrame}
    input text    ${SecurityCode}    123
    Unselect Frame

Amaysim_TC01_CreditCardPayment_TS18_CheckCardInfoT&C
    click element    ${CardInfoT&C}

Amaysim_TC01_CreditCardPayment_TS19_ClickPlaceOrderButton
    click element    ${PlaceOrderBtn}

Amaysim_TC01_CreditCardPayment_TS20_PaymentErrorMessage
    Wait Until Page Contains    Credit Card payment failed    60
    wait until element is visible    ${PaymentErrorMessage}    60

Amaysim_TC01_CreditCardPayment_TS21_CloseWindow
    Close window