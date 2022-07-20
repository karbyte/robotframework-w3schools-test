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

#004
${HomeButton}  //*[@id="root"]/div/div[1]/div/div[3]/div/a
${ReferencesTab}  //*[@id="navbtn_references"]
${PythonReferencesTab}  //*[@id="nav_references"]/div/div/div[3]/a[7]
${PythonBuiltInFunctions}  //*[@id="main"]/div[3]/a[1]
${isInstanceFunction}  //*[@id="main"]/table/tbody/tr[35]/td[1]/a
${FunctionSyntax}  //*[@id="main"]/h2[2]

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
    [Arguments]   ${Email}   ${Password}
    Click Element    ${LogInButton}
    Input Text    ${EmailField}  ${Email}
    Textfield Should Contain    ${EmailField}   ${Email}
    Input Text   ${PasswordField}    ${Password}
    Textfield Should Contain    ${PasswordField}   ${Password}
    Click Element    ${LogInWithCredentials}
    Wait Until Page Contains    My learning  10

Search for a specific course
    [Arguments]   ${Keyword}
    Sleep    2s
    Scroll Element Into View    ${BrowseAllTutorials}
    Click Element    ${BrowseAllTutorials}
    Wait Until Page Contains    All tutorials
    Input Text    ${SearchTutorialsTextField}    ${Keyword}
    Click Element    ${PythonCourseId}
    Wait Until Page Contains    Learn Python

Opening pricing tab & check enroll button
    Click Element  ${PricingLink}
    Switch Window  new
    Scroll Element Into View    ${EnrollButton}

Choosing references tab
    Wait Until Page Contains Element    ${HomeButton}
    Scroll Element Into View    ${HomeButton}
    Click Element    ${HomeButton}
    Wait Until Page Contains Element   ${ReferencesTab}
    Click Element    ${ReferencesTab}

Choosing Python references tab
    Wait Until Page Contains Element  ${PythonReferencesTab}
    Click Element    ${PythonReferencesTab}
    Click Element    ${PythonBuiltInFunctions}

Choose a specific built-in function overview
    Click Element    ${isInstanceFunction}
    Scroll Element Into View    ${FunctionSyntax}
    Sleep    2s