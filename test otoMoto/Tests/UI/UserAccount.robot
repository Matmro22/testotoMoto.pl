*** Settings ***
Documentation   Successful login and logout from the site.
Test Setup      Open Browser Home Page
Test Teardown   Capture Screen Shot If Failed And Close Browser
Library         SeleniumLibrary
Variables       ../../Resources/Variables/Variables.py
Resource        ../../PageObject/otoMoto/UserPanelPage.robot
Resource        ../../PageObject/otoMoto/HomePage.robot
Resource        ../../PageObject/otoMoto/LoginPage.robot
Resource        ../../PageObject/otoMoto/Common.robot


*** Test Cases ***
LoginLogoutTootoMoto
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open    ${siteUrl}
    Enter Login Page
    Verify Login Page Is Open
    Input Username      testerekoprogramowanka@gmail.com
    Input Password      Hasse1ko
    Click Login
    Verify User Is Logged
    Logout
    Check If Logged Out

CheckUserStatistics
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open    ${siteUrl}
    Enter Login Page
    Verify Login Page Is Open
    Input Username      testerekoprogramowanka@gmail.com
    Input Password      Hasse1ko
    Click Login
    Go To Statistics Section
    Click 30 Days Button
    Click 7 Days Button
    Check Overall Statistics
    Check All Statistics
    Check Favourites Statistics
    Check Views Statistics
    Check Messages Statistics
    Logout
    Check If Logged Out

CheckUserAnnouncements
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open    ${siteUrl}
    Enter Login Page
    Verify Login Page Is Open
    Input Username      testerekoprogramowanka@gmail.com
    Input Password      Hasse1ko
    Click Login
    Go To Announcements Section
    Check Cars Announcements
    Check Parts Announcements
    Check Bikes Announcements
    Check Vans Announcements
    Check Trailers Announcements
    Logout
    Check If Logged Out

CheckUserMessages
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open    ${siteUrl}
    Enter Login Page
    Verify Login Page Is Open
    Input Username      testerekoprogramowanka@gmail.com
    Input Password      Hasse1ko
    Click Login
    Verify User Is Logged
    Go To Messages Section
    Check Archive Messages
    Check Bought Messages
    Check Sold Messages

CheckUserPayments
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open    ${siteUrl}
    Enter Login Page
    Verify Login Page Is Open
    Input Username      testerekoprogramowanka@gmail.com
    Input Password      Hasse1ko
    Click Login
    Verify User Is Logged
    Go To Payments Section
    Check Payments Operation
#    Check Invoices
    Check Add Points
#    Check History Of Payments
    Logout
    Check If Logged Out

ChangeContactDetails
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open    ${siteUrl}
    Enter Login Page
    Verify Login Page Is Open
    Input Username      testerekoprogramowanka@gmail.com
    Input Password      Hasse1ko
    Click Login
    Go To Settings Section
    Change Contact Details
    Choose Country                  Niemcy
    Add Name Of The Owner           Mateusz Mroczkowski
    Add Number Of The Owner         788295792
    Click Autocomplete Checkbox
    Save Details
    Logout
    Check If Logged Out