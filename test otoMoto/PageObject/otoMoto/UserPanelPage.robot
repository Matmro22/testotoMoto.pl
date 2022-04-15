*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${userStatisticsbutton}             //*[@id="se_statistics"]
${userAnnouncementsbutton}          //*[@id="siteWrap"]/div[1]/div/ul/li[2]/span
${userMessagesbutton}               //*[@id="se_accountAnswers"]
${userPaymentsbutton}               //a[@id='se_accountWallet']
${userSettingsbutton}               //a[@id='se_accountShop']
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
${contactCountry}                   //*[@id="geoCityCountry"]
${contactName}                      //*[@id="changeDefaultContact"]/fieldset/div[3]/div/input
${contactNumber}                    //body/div[@id='siteWrap']/section[1]/div[3]/div[1]/div[1]/div[1]/div[2]/form[1]/fieldset[1]/div[4]/div[1]/input[1]
${autocompletecheckbox}             //body/div[@id='siteWrap']/section[1]/div[3]/div[1]/div[1]/div[1]/div[2]/form[1]/fieldset[1]/div[5]/div[1]/label[1]
${savebutton}                       //*[@id="changeDefaultContactSubmit"]

*** Keywords ***
Go To Statistics Section
    Sleep   2s
    Wait Until Page Contains Element   ${userStatisticsbutton}    timeout=10s
    Click Element   ${userStatisticsbutton}

Go To Announcements Section
    Sleep   2s
    Wait Until Page Contains Element    ${userAnnouncementsbutton}      timeout=10s
    Mouse Over  ${userAnnouncementsbutton}
    Click Element   ${userAnnouncementsbutton}

Go To Messages Section
    Sleep   2s
    Wait Until Page Contains Element   ${userMessagesbutton}    timeout=10s
    Click Element   ${userMessagesbutton}

Go To Payments Section
    Sleep   2s
    Mouse Over  ${userPaymentsbutton}
    Wait Until Page Contains Element   ${userPaymentsbutton}    timeout=10s
    Click Element   ${userPaymentsbutton}

Go To Settings Section
    Sleep   2s
    Wait Until Page Contains Element   ${userSettingsbutton}    timeout=10s
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
    Wait Until Element Is Visible   ${contactCountry}
    Set Focus To Element    ${contactCountry}
    Select From List By Label   ${contactCountry}       ${country}

Add Name Of The Owner
    [Arguments]     ${name}
    Wait Until Element Is Visible   ${contactName}
    Click Element   ${contactName}
    Input Text  ${contactName}   ${name}

Add Number Of The Owner
    [Arguments]     ${number}
    Wait Until Element Is Visible   ${contactNumber}
    Click Element   ${contactNumber}
    Input Text  ${contactNumber}   ${number}

Click Autocomplete Checkbox
    Wait Until Element Is Visible   ${autocompletecheckbox}
    Click Element   ${autocompletecheckbox}

Save Details
    Wait Until Element Is Visible   ${savebutton}
    Click Element   ${savebutton}