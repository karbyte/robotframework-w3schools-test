*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

*** Variables ***
${URL}  https://www.w3schools.com
${Browser}  Chrome
${BrowseAllTutorials}  //*[@id="root"]/div/div[9]/div/div[2]/button
${SearchTutorialsTextField}  //*[@id="root"]/div/div[3]/div[2]/form/input
${PythonCourseId}  //*[@id="root"]/div/div[4]/div/div[2]/div[1]/div/div[1]/img
${Continue}  //*[@id="root"]/div/div[2]/div[2]/div[1]/div[1]/div[2]/button
${SubmitAnswerInCourse}  //*[@id="w3-exerciseform"]/div/button
${AnswerTextField}  //*[@id="assignmentcontainer"]/input
${SubmitAnswerInQuiz}   //*[@id="answerbutton"]

*** Test Cases ***
case_002 Search for a Python course & submit an answer to a quest
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Accept Cookie
    Log In Procedure
    Sleep  3s
    Click Element    ${BrowseAllTutorials}
    Wait Until Page Contains    All tutorials
    Input Text    ${SearchTutorialsTextField}    python
    Click Element    ${PythonCourseId}
    Wait Until Page Contains    Learn Python
    Click Element    ${Continue}
    Click Element    ${SubmitAnswerInCourse}
    Switch Window    new
    Input Text    ${AnswerTextField}    print
    Sleep & Close Browser