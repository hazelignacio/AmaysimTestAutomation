# AmaysimTestAutomation
This Project will automate www.amaysim.com.au mainly focusing on features where in tha User will purchase a 7-day SIM Plan with Failed Credit Card Payment.

# Overview
This project was developed using `RobotFramework` and `MacOS`.

## Installation Dependencies
### Python Selenium Robot Framework
Please follow the link below to install python selenium robot framework:
  1. For [MAC](https://www.youtube.com/watch?v=zcT8hSipe2A&list=PLenKSK9oxpLHgNm4indTzDk39LX1zI8F6&ab_channel=SoftwareTestingMentor)
  2. For [Windows](https://www.youtube.com/watch?v=UbYxkUq0Hec&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&ab_channel=SDET-QAAutomationTechie)

### Install chromedriver
A chromedriver.exe for `Chrome v115` for macOS is included in the Resources directory.
If a different chromedriver version is needed, download here: `(https://chromedriver.chromium.org/downloads)` 

# Instructions
### Execute In Different Browsers
The project currently uses `Chrome` as the default browser. If you want to use a different browser:
1. Go to Config.robot file under `Resources > TestData`
2. In line 18 delete `#`
3. In line 19 add `#` infront 
4. In line 11 Change "Chrome" to:
- "Firefox" (for firefox) `${BROWSER}  Firefox`
- "edge" (for ms edge)  `${BROWSER}  edge`

### Changes In Code 
If you are using `Windows OS`, please do this following changes:
1. In `Amaysim_TS01_CreditCardPaymentFailes.robot` file under `Resources > Keywords` line 58, change `RETURN` to `Enter`.

### Change The File Location of chrome driver
Please update `${driver_path}` variable found in `config.robot` under `Resources > TestData` file to the location of the chromedriver that will be used, including chromedriver itself in the path without the file extension.

# How to execute the files
Once you have downloaded the project, please follow these steps:
1. In your terminal, change directory and go inside the "TestSuite" folder of the project.
2. Once inside, enter `robot smoke.robot`.
