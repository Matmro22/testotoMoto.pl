*** Settings ***
Library     SeleniumLibrary
Library     String
Variables   ../../Resources/Variables/Variables.py

*** Variables ***
${advancedSearchCars}                       //*[@id="__next"]/div/div/div/main/div[2]/article/fieldset/div/form/div[2]/button[2]
${quickSearchButton}                        //*[@id="__next"]/div/div/div/main/div[2]/article/fieldset/div/form/div[2]/button[1]
${quickSearchCars}                          //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[1]/a/span
${quickSearchParts}                         //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[2]/a/span
${quickSearchBikes}                         //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[3]/a/span
${quickSearchProfessionalCategories}        //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[4]/a
${quickSearchVans}                          //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[4]/ul/li[1]/a
${quickSearchTrucks}                        //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[4]/ul/li[2]/a
${quickSearchConstructionCars}              //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[4]/ul/li[3]/a
${quickSearchTrailers}                      //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[4]/ul/li[4]/a
${quickSearchAgriculturalVehicles}          //*[@id="__next"]/div/div/div/main/div[2]/article/ul/li[4]/ul/li[5]/a
${quickSearchBodyType}                      //*[@id="filter_enum_body_type"]
${quickSearchBrand}                         //*[@id="filter_enum_make"]
${quickSearchModel}                         //*[@id="filter_enum_model"]
${quickSearchGeneration}                    //*[@id="filter_enum_generation"]
${quickSearchPriceFrom}                     //*[@id="filter_float_price:from"]
${quickSearchPriceTo}                       //*[@id="filter_float_price:to"]
${quickSearchYearFrom}                      //*[@id="filter_float_year:from"]
${quickSearchYearTo}                        //*[@id="filter_float_year:to"]
${quickSearchFuel}                          //*[@id="filter_enum_fuel_type"]
${quickSearchKmFrom}                        //*[@id="filter_float_mileage:from"]
${quickSearchKmTo}                          //*[@id="filter_float_mileage:to"]
${quickSearchPurpose}                       //*[@id="subcategory_id"]
${quickSearchDetails}                       //*[@id="q"]
${saleButton}                               //*[@id="__next"]/div/div/div/main/div[2]/article/fieldset/div/form/div[1]/div[1]/div/div/div/button[1]
${rentButton}                               //*[@id="__next"]/div/div/div/main/div[2]/article/fieldset/div/form/div[1]/div[1]/div/div/div/button[2]
${loanChance}                               //*[@id="__next"]/div/div/div/main/div[2]/article/fieldset/div/form/div[1]/div[5]/div/label/div


*** Keywords ***
Verify Home Page Is Open
    [Arguments]    ${siteUrl}
    Element Should Be Visible  ${advancedSearchCars}
    ${url}=  Get Location
    Should Be Equal  ${url}  ${siteUrl}

Quick Search
    Click Element   ${quickSearchButton}

Advamced Search
    Click Element   ${advancedSearchCars}

Quick Search Cars
    Click Element   ${quickSearchCars}
    Sleep   1s

Quick Search Parts
    Click Element   ${quickSearchParts}
    Sleep   1s

Quick Search Bikes
    Click Element   ${quickSearchBikes}
    Sleep   1s

Quick Search Vans
    Sleep   1s
    Mouse Over  ${quickSearchProfessionalCategories}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchVans}
    Click Element  ${quickSearchVans}
    Sleep   1s

Quick Search Trucks
    Sleep   1s
    Mouse Over  ${quickSearchProfessionalCategories}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchTrucks}
    Click Element  ${quickSearchTrucks}
    Sleep   1s

Quick Search Construction Cars
    Sleep   1s
    Mouse Over  ${quickSearchProfessionalCategories}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchConstructionCars}
    Click Element  ${quickSearchConstructionCars}
    Sleep   1s

Quick Search Trailers
    Sleep   1s
    Mouse Over  ${quickSearchProfessionalCategories}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchTrailers}
    Click Element  ${quickSearchTrailers}
    Sleep   1s

Quick Search Agricultural Vehicles
    Sleep   1s
    Mouse Over  ${quickSearchProfessionalCategories}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchAgriculturalVehicles}
    Click Element  ${quickSearchAgriculturalVehicles}
    Sleep   1s

Quick Search By Body Type
    [Arguments]     ${QSBodyType}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchBodyType}
    Click Element   ${quickSearchBodyType}
    Input Text   ${quickSearchBodyType}  ${QSBodyType}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchBodyType}
    ${string1}=    Convert To Lowercase	    ${QSBodyType}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}


Quick Search By Brand
    [Arguments]     ${QSBrand}
    Wait Until Element Is Visible   ${quickSearchBrand}
    Click Element   ${quickSearchBrand}
    Input Text   ${quickSearchBrand}  ${QSBrand}
    Press Keys        none      ENTER
    Sleep   1s

Quick Search By Model
    [Arguments]     ${QSModel}
    Wait Until Element Is Enabled   ${quickSearchModel}     timeout=1s
    Click Element   ${quickSearchModel}
    Input Text   ${quickSearchModel}  ${QSModel}
    Press Keys        none      ENTER
    Sleep   1s

Quick Search By Generation
    [Arguments]     ${QSGeneration}
    Wait Until Element Is Enabled   ${quickSearchGeneration}     timeout=1s
    Click Element   ${quickSearchGeneration}
    Input Text   ${quickSearchGeneration}  ${QSGeneration}
    Press Keys        none      ENTER
    Sleep   1s

Quick Search By Price From
    [Arguments]     ${QSPriceFrom}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchPriceFrom}
    Click Element   ${quickSearchPriceFrom}
    Input Text   ${quickSearchPriceFrom}  ${QSPriceFrom}
    Press Keys        none      ENTER

Quick Search By Price To
    [Arguments]     ${QSPriceTo}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchPriceTo}
    Click Element   ${quickSearchPriceTo}
    Input Text   ${quickSearchPriceTo}  ${QSPriceTo}
    Press Keys        none      ENTER

Quick Search By Year From
    [Arguments]     ${QSYearFrom}
    Sleep   2s
    Wait Until Element Is Visible   ${quickSearchYearFrom}
    Click Element   ${quickSearchYearFrom}
    Input Text   ${quickSearchYearFrom}  ${QSYearFrom}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchYearFrom}
    ${String1}=    Convert To Lowercase	    ${QSYearFrom}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Year To
    [Arguments]     ${QSYearTo}
    Sleep   1s
    Wait Until Element Is Visible   ${quickSearchYearTo}
    Click Element   ${quickSearchYearTo}
    Input Text   ${quickSearchYearTo}  ${QSYearTo}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchYearTo}
    ${String1}=    Convert To Lowercase	    ${QSYearTo}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Type Of Fuel
    [Arguments]     ${QSfuel}
    Sleep   1s
    ${String1}     Convert To Lowercase	    ${QSfuel}
    Click Element   ${quickSearchFuel}
    Input Text   ${quickSearchFuel}  ${QSfuel}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchFuel}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Km From
    [Arguments]     ${QSKmFrom}
    Sleep   1s
    Click Element   ${quickSearchKmFrom}
    Input Text   ${quickSearchKmFrom}  ${QSKmFrom}
    Press Keys        none      ENTER

Quick Search By Km To
    [Arguments]     ${QSKmTo}
    Sleep   1s
    Click Element   ${quickSearchKmTo}
    Input Text   ${quickSearchKmTo}  ${QSKmTo}
    Press Keys        none      ENTER

Quick Search By Purpose
    [Arguments]     ${QSPurpose}
    Sleep   1s
    wait until element is visible   ${quickSearchPurpose}
    Click Element   ${quickSearchPurpose}
    Input Text   ${quickSearchPurpose}  ${QSPurpose}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchPurpose}
    ${string1}=    Convert To Lowercase	    ${QSPurpose}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Details
    [Arguments]     ${QSDetails}
    Sleep   1s
    Click Element   ${quickSearchDetails}
    Input Text   ${quickSearchDetails}  ${QSDetails}
    Press Keys        none      ENTER

Choose Sale Option
    Sleep   1s
    Wait Until Element Is Visible       ${saleButton}
    Click Element       ${saleButton}

Choose Rent Option
    Sleep   1s
    Wait Until Element Is Visible       ${rentButton}
    Click Element       ${rentButton}

Aplly For A Loan
    Sleep   1s
    Wait Until Element Is Visible       ${loanChance}
    Click Element       ${loanChance}
