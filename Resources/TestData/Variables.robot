*** Settings ***
Documentation    Suite description

*** Variables ***
##Homepage
${HomepageTextCheck}    //h2[@class="cmp-title__text"]
${showAll}    //a[@class="plan-table-heading-link"]

##Select 7day SIM Plan
${SIMPlan}   //a[@class="btn no-icon btn-orange" and @href="/mobile/cart/7-day-10gb" and text() = "Buy now"]

#SIM Info
${NewNumBtn}    //span[@class='css-15xa8x' and text()='pick a new number']
${PhysicalSIM}    //span[@class='css-1f4kgy0' and text()='Physical SIM']
${CheckoutBtn}    //span[@class='css-1tisfka' and text()='checkout']
${CustomerInfoTextCheck}    //h3[@id="already-with-amaysim-header-name"]

#Customer Info
${NewCustomerBtn}    (//label[@class='css-1ne7y3i'])[1]
${FirstName}     //input[@name='firstName']
${LastName}    //input[@name='lastName']
${DateOfBirth}    //input[@name='dateOfBirth']
${Email}    //input[@name='email']
${Passwd}    //input[@name='password']
${PhoneNum}    //input[@name='contactNumber']
${Address}    //input[@placeholder='e.g 123 George St Sydney NSW 2000']
${MOPBtn}    //div[@class="css-1cnc2pd" and text()="Credit or Debit card"]
${CustomerInfoT&C}    //span[@class='css-glg6ye' and text()='I acknowledge that I have read and agree to amaysim']
${ConPaymentBtn}    //button[@data-continue-to-payment-button and @value="continue"]
${ConPaymentBtn}    //span[@class='css-4h4gc7' and text()='continue to payment']

#Credit Card Info
${CardDetailsTextCheck}    //div[@class="css-1s5y25f"]
${CardNum}    //input[@name='cardnumber']
${CardNumFrame}    //iframe[@title="Secure card number input frame"]
${ExpiryDateFrame}    //iframe[@title="Secure expiration date input frame"]
${ExpiryDate}    //input[@name="exp-date"]
${SecurityCode}    //input[@name="cvc"]
${SecurityCodeFrame}    //iframe[@title="Secure CVC input frame"]
${CardInfoT&C}    //span[@class='css-qib644' and text()='I confirm that I am the card holder and understand that this credit card may be used to complete an identity check']
${PlaceOrderBtn}    //span[@class='css-wv676b' and text()='place your order']

#Error Message
${PaymentErrorMessage}    //span[@class='css-qib644' and text()='Your attempt to pay via Credit Card has failed. Please ensure you have enough funds and try again or use another credit card.']