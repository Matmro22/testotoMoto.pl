*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${userStatisticsbutton}             //*[@id="se_statistics"]
${userAnnouncementsbutton}          //*[@id="siteWrap"]/div[1]/div/ul/li[2]/span
${userMessagesbutton}               //*[@id="se_accountAnswers"]
${userPaymentsbutton}               //*[@id="__next"]/div/div/div/main/section/div[2]/a[4]
${userSettingsbutton}               //*[@id="__next"]/div/div/div/main/section/div[2]/a[5]
${statistics7Daysbutton}            //*[@id="siteWrap"]/section/div[2]/div/div/div/div[1]/div[2]/button[1]
${statistics30Daysbutton}           //*[@id="siteWrap"]/section/div[2]/div/div/div/div[1]/div[2]/button[2]
${statistic1Overall}                //*[@id="uniqueImpressions-panel"]
${statistic2all}                    //*[@id="uniqueViews-panel"]
${statistic3Favourites}             //*[@id="uniqueFavourites-panel"]
${statistic4Views}                  //*[@id="uniqueShowPhones-panel"]
${statistic5Messages}               //*[@id="uniqueChatReplies-panel"]
${announcementslist}                //*[@id="body-container"]/div[2]/div/div/div/div[1]/div/div/div
${announcementscars}                //button[@id='29']
${announcementsparts}               //*[@id="161"]
${announcementsbikes}               //*[@id="65"]
${announcementsvans}                //*[@id="73"]
${announcementstrailers}            //*[@id="9"]
${userFirstOption}                  //*[@id="__next"]/div/div/div/main/section/div[3]/a[1]
${userSecondOption}                 //*[@id="__next"]/div/div/div/main/section/div[3]/a[2]
${userThirdOption}                  //*[@id="__next"]/div/div/div/main/section/div[3]/a[3]
${userFourthOption}                 //*[@id="__next"]/div/div/div/main/section/div[3]/a[4]
${settingsChangeContactDetails}     //*[@id="siteWrap"]/section/div[3]/div/div/div[1]/div[1]
${contactCountry}    Choose Country
${contactCity}    Add Post Code And City
${contactName}    Add Name Of The Owner
${contactNumber}    Add Number Of The Owner
   Click Autocomplete Checkbox
    Save Details

*** Keywords ***
Go To Statistics Section
    Wait Until Page Contain element   ${userStatisticsbutton}
    Click Element   ${userStatisticsbutton}

Go To Announcements Section
    Mouse Over  ${userAnnouncementsbutton}
    Page Should Contain Element   ${userAnnouncementsbutton}
    Click Element   ${userAnnouncementsbutton}

Go To Messages Section
    Wait Until Page Contain element   ${userMessagesbutton}
    Click Element   ${userMessagesbutton}

Go To Payments Section
    Wait Until Page Contain element   ${userPaymentsbutton}
    Click Element   ${userPaymentsbutton}

Go To Settings Section
    Wait Until Page Contain element   ${userSettingsbutton}
    Click Element   ${userSettingsbutton}

Click 7 Days Button
    Wait Until Element Is Visible   ${statistics7Daysbutton}
    Click Element   ${statistics7Daysbutton}

Click 30 Days Button
    Wait Until Element Is Visible   ${statistics30Daysbutton}
    Click Element   ${statistics30Daysbutton}

Check Overall Statistics
    Wait Until Element Is Visible   ${statistic1Overall}
    Click Element   ${statistic1Overall}

Check All Statistics
    Wait Until Element Is Visible   ${statistic2all}
    Click Element   ${statistic2all}

Check Favourites Statistics
    Wait Until Element Is Visible   ${statistic3Favourites}
    Click Element   ${statistic3Favourites}

Check Views Statistics
    Wait Until Element Is Visible   ${statistic4Views}
    Click Element   ${statistic4Views}

Check Messages Statistics
    Wait Until Element Is Visible   ${statistic5Messages}
    Click Element   ${statistic5Messages}

Check Cars Announcements
    Wait Until Element Is Visible   ${announcementslist}
    Click Element   ${announcementslist}
    Wait Until Element Is Visible   ${announcementscars}
    Click Element   ${announcementscars}

Check Parts Announcements
    Wait Until Element Is Visible   ${announcementslist}
    Click Element   ${announcementslist}
    Wait Until Element Is Visible   ${announcementsparts}
    Click Element   ${announcementsparts}

Check Bikes Announcements
    Wait Until Element Is Visible   ${announcementslist}
    Click Element   ${announcementslist}
    Wait Until Element Is Visible   ${announcementsbikes}
    Click Element   ${announcementsbikes}

Check Vans Announcements
    Wait Until Element Is Visible   ${announcementslist}
    Click Element   ${announcementslist}
    Wait Until Element Is Visible   ${announcementsvans}
    Click Element   ${announcementsvans}

Check Trailers Announcements
    Wait Until Element Is Visible   ${announcementslist}
    Click Element   ${announcementslist}
    Wait Until Element Is Visible   ${announcementstrailers}
    Click Element   ${announcementstrailers}

Check Sold Messages
    Wait Until Element Is Visible   ${userFirstOption}
    Click Element   ${userFirstOption}

Check Bought Messages
    Wait Until Element Is Visible   ${userSecondOption}
    Click Element   ${userSecondOption}

Check Archive Messages
    Wait Until Element Is Visible   ${userThirdOption}
    Click Element   ${userThirdOption}

Check History Of Payments
    Wait Until Element Is Visible   ${userFirstOption}
    Click Element   ${userFirstOption}

Check Payments Operation
    Wait Until Element Is Visible   ${userSecondOption}
    Click Element   ${userSecondOption}

Check Invoices
    Wait Until Element Is Visible   ${userThirdOption}
    Click Element   ${userThirdOption}

Check Add Points
    Wait Until Element Is Visible   ${userFourthOption}
    Click Element   ${userFourthOption}

Change Contact Details
    Wait Until Element Is Visible   ${settingsChangeContactDetails}
    Click Element   ${settingsChangeContactDetails}

Choose Country
    [Arguments]     ${country}

Add Post Code And City
    [Arguments]     ${city}

Add Name Of The Owner
    [Arguments]     ${name}

Add Number Of The Owner
    [Arguments]     ${number}

Click Autocomplete Checkbox

Save Details