*** Settings ***
Library    Browser

*** Variables ***
&{screen_size}    width=1920  height=1080

*** Test Cases ***
Fill form normal
    new browser    chromium    headless=False
    # New Context    viewport={'width': 200, 'height': 200}
    New Context    viewport=&{screen_size}
    new page    https://www.withsecure.com/en/home
    # Click    xpath=//button[@id='onetrust-accept-btn-handler']
    Accept Cookies
    Click    xpath=//button[normalize-space()='Expertise']
    Click    xpath=//a[normalize-space()='Innovation programs']

    Eat All Cookies
    

*** Keywords ***
Accept Cookies
    Click    xpath=//button[@id='onetrust-accept-btn-handler']
