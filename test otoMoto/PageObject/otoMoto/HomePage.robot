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
${quickSearchPartsPurpose}                  //*[@id="subcategory_id"]
${quickSearchPartsBrand}                    //*[@id="filter_enum_make"]
${quickSearchPartsDetails}                  //*[@id="q"]
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

Quick Search Parts
    Click Element   ${quickSearchParts}

Quick Search Bikes
    Click Element   ${quickSearchBikes}

Quick Search Vans
    Mouse Over  ${quickSearchProfessionalCategories}
    Click Element  ${quickSearchVans}

Quick Search Trucks
    Mouse Over  ${quickSearchProfessionalCategories}
    Click Element  ${quickSearchTrucks}

Quick Search Construction Cars
    Mouse Over  ${quickSearchProfessionalCategories}
    Click Element  ${quickSearchConstructionCars}

Quick Search Trailers
    Mouse Over  ${quickSearchProfessionalCategories}
    Click Element  ${quickSearchTrailers}

Quick Search Agricultural Vehicles
    Mouse Over  ${quickSearchProfessionalCategories}
    Click Element  ${quickSearchAgriculturalVehicles}

Quick Search By Body Type
    [Arguments]     ${QSBodyType}
    Click Element   ${quickSearchBodyType}
    Input Text   ${quickSearchBodyType}  ${QSBodyType}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchBodyType}
    ${string1}=    Convert To Lowercase	    ${QSBodyType}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Brand
    [Arguments]     ${QSBrand}
    Click Element   ${quickSearchBrand}
    Input Text   ${quickSearchBrand}  ${QSBrand}
    Press Keys        none      ENTER

Quick Search By Model
    [Arguments]     ${QSModel}
    Wait Until Element Is Enabled   ${quickSearchModel}     timeout=1s
    Click Element   ${quickSearchModel}
    Input Text   ${quickSearchModel}  ${QSModel}
    Press Keys        none      ENTER

Quick Search By Generation
    [Arguments]     ${QSGeneration}
    Wait Until Element Is Enabled   ${quickSearchGeneration}     timeout=1s
    Click Element   ${quickSearchGeneration}
    Input Text   ${quickSearchGeneration}  ${QSGeneration}
    Press Keys        none      ENTER

Quick Search By Price From
    [Arguments]     ${QSPriceFrom}
    Click Element   ${quickSearchPriceFrom}
    Input Text   ${quickSearchPriceFrom}  ${QSPriceFrom}
    Press Keys        none      ENTER

Quick Search By Price To
    [Arguments]     ${QSPriceTo}
    Click Element   ${quickSearchPriceTo}
    Input Text   ${quickSearchPriceTo}  ${QSPriceTo}
    Press Keys        none      ENTER

Quick Search By Year From
    [Arguments]     ${QSYearFrom}
    Click Element   ${quickSearchYearFrom}
    Input Text   ${quickSearchYearFrom}  ${QSYearFrom}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchYearFrom}
    ${String1}=    Convert To Lowercase	    ${QSYearFrom}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Year To
    [Arguments]     ${QSYearTo}
    Click Element   ${quickSearchYearTo}
    Input Text   ${quickSearchYearTo}  ${QSYearTo}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchYearTo}
    ${String1}=    Convert To Lowercase	    ${QSYearTo}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Type Of Fuel
    [Arguments]     ${QSfuel}
    ${String1}     Convert To Lowercase	    ${QSfuel}
    Click Element   ${quickSearchFuel}
    Input Text   ${quickSearchFuel}  ${QSfuel}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchFuel}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Km From
    [Arguments]     ${QSKmFrom}
    Click Element   ${quickSearchKmFrom}
    Input Text   ${quickSearchKmFrom}  ${QSKmFrom}
    Press Keys        none      ENTER

Quick Search By Km To
    [Arguments]     ${QSKmTo}
    ${String1}     Convert To Lowercase	    ${QSKmTo}
    Click Element   ${quickSearchKmTo}
    Input Text   ${quickSearchKmTo}  ${QSKmTo}
    Press Keys        none      ENTER

Quick Search By Purpose
    [Arguments]     ${QSPurpose}
    Click Element   ${quickSearchPurpose}
    Input Text   ${quickSearchPurpose}  ${QSPurpose}
    Press Keys        none      ENTER
    ${value}=    Get Value      ${quickSearchPurpose}
    ${string1}=    Convert To Lowercase	    ${QSPurpose}
    ${string2}=    Convert To Lowercase	    ${value}
    Should Be Equal      ${string1}      ${string2}

Quick Search By Details
    [Arguments]     ${QSDetails}
    Click Element   ${quickSearchDetails}
    Input Text   ${quickSearchDetails}  ${QSDetails}
    Press Keys        none      ENTER

Choose Sale Option
    Click Element       ${saleButton}

Choose Rent Option
    Click Element       ${rentButton}

Aplly For A Loan
    Click Element       ${loanChance}
