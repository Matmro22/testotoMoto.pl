*** Settings ***
Library         SeleniumLibrary
Variables       ../../Resources/Variables/Variables.py

*** Variables ***
${searchCarFilter}           //*[@id="__next"]/div/div/div/div[2]/div[1]/form/section
${adSearchCarPage}           //*[@id="trigger-0"]

*** Keywords ***
Verify Search Cars Page Is Open
    Wait Until Page Contains Element    ${searchCarFilter}      timeout=5s
    Page Should Contain Element   ${adSearchCarPage}