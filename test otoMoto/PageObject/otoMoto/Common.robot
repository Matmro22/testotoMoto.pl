*** Settings ***
Library         SeleniumLibrary
Variables       ../../Resources/Variables/Variables.py

*** Variables ***
${acceptCookieButton}     //button[@id='onetrust-accept-btn-handler']
${logoutButton}           //a[@id='login-box-logout']
${userAccountFrame}       //*[@id="topLoginLink"]
${loginUserButton}        //a[contains(text(),'Zaloguj się')]

*** Keywords ***
Open Browser Home Page
    Open Browser  ${siteUrl}  ${browser}
    Maximize Browser Window

Accepting Cookies
    Wait Until Element Is Visible   ${acceptCookieButton}
    Click Element  ${acceptCookieButton}

Logout
    Sleep   3s
    Wait Until Element Is Visible  ${userAccountFrame}  timeout=5s
    Sleep   1s
    Mouse Over  ${userAccountFrame}
    Wait Until Element Is Visible  ${logoutButton}
    Click Element  ${logoutButton}

Check If Logged Out
    Wait Until Element Is Visible  ${loginUserButton}
    Page Should Not Contain Element   ${userAccountFrame}

Capture Screen Shot If Failed And Close Browser
    Run Keyword If Test Failed      Capture Page Screenshot     ${testName}.png
    Close Browser