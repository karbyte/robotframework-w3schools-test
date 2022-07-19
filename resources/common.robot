*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#setup variables
${URL}  https://www.w3schools.com
${Browser}  Chrome

#001
${LogInButton}  //*[@id="w3loginbtn"]
${EmailField}  //*[@id="modalusername"]
${UserEmail}  yolotzin.jadalee@moondoo.org
${PasswordField}  //*[@id="current-password"]
${UserPassword}  Awds123$
${LogInWithCredentials}  //*[@id="root"]/div/div/div[4]/div[1]/div/div[4]/div[1]/button

#002
${BrowseAllTutorials}  //*[@id="root"]/div/div[9]/div/div[2]/button
${SearchTutorialsTextField}  //*[@id="root"]/div/div[3]/div[2]/form/input
${CourseKeyword}  python
${PythonCourseId}  //*[@id="root"]/div/div[4]/div/div[2]/div[1]/div/div[1]/img

#003
${PricingLink}  //*[@id="root"]/div/div[8]/div/div[2]/div/button
${EnrollButton}  //*[@id="enroll-footer"]/a

*** Keywords ***
Open browser, maximize browser window & close cookie pop-up
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="accept-choices"]
    Click Element    //*[@id="accept-choices"]

Sleep & Close Browser
    Sleep    2s
    Close Browser

Logging in with credentials & performing credentials check
    Click Element    ${LogInButton}
    Input Text    ${EmailField}  ${UserEmail}
    Textfield Should Contain    ${EmailField}   ${UserEmail}
    Input Text   ${PasswordField}    ${UserPassword}
    Textfield Should Contain    ${PasswordField}   ${UserPassword}
    Click Element    ${LogInWithCredentials}
    Wait Until Page Contains    My learning

Search for a specific course
    Sleep    2s
    Scroll Element Into View    ${BrowseAllTutorials}
    Click Element    ${BrowseAllTutorials}
    Wait Until Page Contains    All tutorials
    Input Text    ${SearchTutorialsTextField}    ${CourseKeyword}
    Click Element    ${PythonCourseId}
    Wait Until Page Contains    Learn Python

Opening pricing tab & check enroll button
    Click Element  ${PricingLink}
    Switch Window  new
    Scroll Element Into View    ${EnrollButton}