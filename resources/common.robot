*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LogInButton}  //*[@id="w3loginbtn"]
${EmailField}  //*[@id="modalusername"]
${PasswordField}  //*[@id="current-password"]
${LogInWithCredentials}  //*[@id="root"]/div/div/div[4]/div[1]/div/div[4]/div[1]/button

${BrowseAllTutorials}  //*[@id="root"]/div/div[9]/div/div[2]/button
${SearchTutorialsTextField}  //*[@id="root"]/div/div[3]/div[2]/form/input
${PythonCourseId}  //*[@id="root"]/div/div[4]/div/div[2]/div[1]/div/div[1]/img
${Continue}  //*[@id="root"]/div/div[2]/div[2]/div[1]/div[1]/div[2]/button
${SubmitAnswerInCourse}  //*[@id="w3-exerciseform"]/div/button
${AnswerTextField}  //*[@id="assignmentcontainer"]/input
${SubmitAnswerInQuiz}   //*[@id="answerbutton"]

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

Search for a Course
        Click Element    ${BrowseAllTutorials}
    Wait Until Page Contains    All tutorials
    Input Text    ${SearchTutorialsTextField}    python
    Click Element    ${PythonCourseId}
    Wait Until Page Contains    Learn Python
    Click Element    ${Continue}
    Click Element    ${SubmitAnswerInCourse}
    Switch Window    new
    Input Text    ${AnswerTextField}    print