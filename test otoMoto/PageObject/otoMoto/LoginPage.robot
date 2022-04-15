*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${loginUsernameInputBox}        //input[@id='current-email']
${loginPasswordInputBox}        //input[@id='current-password']
${loginButton}                  //body/div[@id='__next']/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[2]/form[1]/button[1]
${loginUserButton}              //a[contains(text(),'Zaloguj się')]
${loggedUserElement}            //header/div[1]/div[2]/ul[1]/li[2]/a[1]/span[2]

*** Keywords ***
Enter Login Page
    Wait Until Element Is Visible   ${loginUserButton}
    Click Element   ${loginUserButton}

Verify Login Page Is Open
    Wait Until Element Is Visible   ${loginUsernameInputBox}
    Wait Until Element Is Visible   ${loginPasswordInputBox}
    Wait Until Element Is Visible   ${loginButton}

Input Username
    [Arguments]     ${username}
    Input Text  ${loginUsernameInputBox}  ${username}

Input Password
    [Arguments]     ${password}
    Input Text  ${loginPasswordInputBox}  ${password}

Click Login
    Click Element  ${loginButton}

Verify User Is Logged
    Sleep   5s
    Wait Until Element Is Visible   ${loggedUserElement}
    Mouse Over    ${loggedUserElement}
    Element Should Be Visible    ${userAccountFrame}