*** Settings ***
Library    Browser
Library    Collections

*** Variables ***
${example_var_2}    test_1111

*** Test Cases ***
Fill form normal
    new browser    webkit    headless=False
    # New Context    isMobile=False    viewport={'width': 1920, 'height': 1080}
    New Context    isMobile=False
    new page    https://www.withsecure.com/en/whats-new/email-preferences
    Set Viewport Size    1920    1080
    Click    xpath=//button[@id='onetrust-accept-btn-handler']
    # Fill Text    xpath=//input[contains(@name, 'first_name')]    test_name
    Fill Text    xpath=(//input[contains(@name, 'first_name')])[1]    test_name
    # Fill Text    xpath=(//input[contains(@name, 'first_name')])[2]    test_name
    Fill Text    xpath=(//input[contains(@name, 'last_name')])[1]    test_last_name
    Fill Text    xpath=(//input[contains(@name, 'email')])[1]    test_email
    Fill Text    xpath=(//input[contains(@name, 'company')])[1]    test_company
    # Get Select Options    xpath=(//select[contains(@name, 'country')])[1]
    ${selected} =    Select Options By    xpath=(//select[contains(@name, 'country')])[1]    value    Argentina
    List Should Contain Value    ${selected}    Argentina
    # sleep  2

Fill form NULL-str name
    # new browser    chromium    headless=False
    # New Context    isMobile=False    viewport={'width': 1920, 'height': 1080}
    New Context    isMobile=False
    new page    https://www.withsecure.com/en/whats-new/email-preferences
    Set Viewport Size    1920    1080
    Click    xpath=//button[@id='onetrust-accept-btn-handler']
    # Fill Text    xpath=//input[contains(@name, 'first_name')]    test_name
    Fill Text    xpath=(//input[contains(@name, 'first_name')])[1]    NULL
    Fill Text    xpath=(//input[contains(@name, 'last_name')])[1]    test_last_name
    Fill Text    xpath=(//input[contains(@name, 'email')])[1]    test_email
    Fill Text    xpath=(//input[contains(@name, 'company')])[1]    test_company
    # Get Select Options    xpath=(//select[contains(@name, 'country')])[1]
    Select Options By    xpath=(//select[contains(@name, 'country')])[1]    value    Argentina
    # sleep    4

*** Keywords ***

