*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library    Process
##Library   String
##Library  FakerLibrary

Resource   ../Resources/Keywords/Amaysim_TS01_CreditCardPaymentFailed.robot

Resource   ../Resources/TestData/Config.robot
Resource   ../Resources/TestData/Variables.robot

*** Test Cases ***

TC-001 - Verify If Error Message Is Shown If Credit Card Payment Failed
    [Tags]  TC001  CC Payment Failed ErrorMessage
    Amaysim_TC01_CreditCardPayment_TS01_LoadHomepage
    Amaysim_TC01_CreditCardPayment_TS02_ClickShowAllButton
    Amaysim_TC01_CreditCardPayment_TS03_Click7-dayPlanBuyNowButton
    Amaysim_TC01_CreditCardPayment_TS04_SelectPickANewNumber
    Amaysim_TC01_CreditCardPayment_TS05_SelectPhysicalSIM
    Amaysim_TC01_CreditCardPayment_TS06_ClickCheckoutButton
    Amaysim_TC01_CreditCardPayment_TS07_SelectI'mANewCustomer
    Amaysim_TC01_CreditCardPayment_TS08_InputCustomerName
    Amaysim_TC01_CreditCardPayment_TS09_InputCustomerDateOfBirth
    Amaysim_TC01_CreditCardPayment_TS10_InputCustomerEmail
    Amaysim_TC01_CreditCardPayment_TS11_InputCustomerPasswd
    Amaysim_TC01_CreditCardPayment_TS12_InputCustomerPhoneNum
    Amaysim_TC01_CreditCardPayment_TS12_InputAddress
    Amaysim_TC01_CreditCardPayment_TS13_SelectCreditCardMOP
    Amaysim_TC01_CreditCardPayment_TS14_CheckCustomerInfoT&C
    Amaysim_TC01_CreditCardPayment_TS15_InputCardNumber
    Amaysim_TC01_CreditCardPayment_TS16_InputExipryDate
    Amaysim_TC01_CreditCardPayment_TS17_InputSecurityNumber
    Amaysim_TC01_CreditCardPayment_TS18_CheckCardInfoT&C
    Amaysim_TC01_CreditCardPayment_TS19_ClickPlaceOrderButton
    Amaysim_TC01_CreditCardPayment_TS20_PaymentErrorMessage
    Amaysim_TC01_CreditCardPayment_TS21_CloseWindow

