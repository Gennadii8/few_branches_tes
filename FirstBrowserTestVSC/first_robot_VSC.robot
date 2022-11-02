*** Settings ***
Library    Browser

*** Variables ***

*** Test Cases ***
Example Test
#    open browser    chromium
#    open browser    https://playwright.dev
    new browser    webkit    headless=False
    new page    https://playwright.dev
#    new browser    chromium
#    Get Text    h1    ==    Playwright
    sleep    3
*** Keywords ***

