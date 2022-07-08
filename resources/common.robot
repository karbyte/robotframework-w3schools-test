*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LogInButton}  //*[@id="w3loginbtn"]
${EmailField}  //*[@id="modalusername"]
${PasswordField}  //*[@id="current-password"]
${LogInWithCredentials}  //*[@id="root"]/div/div/div[4]/div[1]/div/div[4]/div[1]/button
*** Keywords ***
Sleep & Close Browser
    Sleep    2s
    Close Browser

Maximize Browser Window and Accept Cookie
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="accept-choices"]
    Click Element    //*[@id="accept-choices"]

Log In Procedure
    Click Element    ${LogInButton}
    Input Text    ${EmailField}    yolotzin.jadalee@moondoo.org
    Textfield Should Contain    ${EmailField}   yolotzin.jadalee@moondoo.org
    Input Text   ${PasswordField}    Awds123$
    Textfield Should Contain    ${PasswordField}   Awds123$
    Click Element    ${LogInWithCredentials}
    Wait Until Page Contains    My learning