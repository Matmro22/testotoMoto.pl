*** Settings ***
Documentation   Vehicle search using all available forms.
Test Setup      Open Browser Home Page
Test Teardown   Capture Screen Shot If Failed And Close Browser
Library         SeleniumLibrary
Variables       ../../Resources/Variables/Variables.py
Resource        ../../PageObject/otoMoto/SearchCarsPage.robot
Resource        ../../PageObject/otoMoto/HomePage.robot
Resource        ../../PageObject/otoMoto/Common.robot

*** Test Cases ***
SearchCar
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open       ${siteUrl}
    Quick Search Cars
    Quick Search By Body Type      Coupe
    Quick Search By Brand          BMW
    Quick Search By Model          Seria 3
    Quick Search By Generation     E36
    Quick Search By Price From     2 000
    Quick Search By Price To       50 000
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search By Type Of Fuel   benzyna
    Quick Search By Km From        10 000
    Quick Search By Km To          1 000 000
    Quick Search
    Verify Search Cars Page Is Open


SearchPart
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Parts
    Quick Search By Purpose       Części samochodowe
    Quick Search By Brand         BMW
    Quick Search By Details       Seria 3
    Quick Search

SearchBike
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Bikes
    Quick Search By Body Type      Sportowy
    Quick Search By Brand          BMW
    Quick Search By Model          S
    Quick Search By Price From     2 000
    Quick Search By Price To       1 000 000
    Quick Search By Year From      2020
    Quick Search By Year To        2022
    Quick Search By Capacity From  50
    Quick Search By Capacity To    1 000
    Quick Search By Type Of Fuel   Benzyna
    Quick Search


SearchVanSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Vans
    Choose Sale Option
    Quick Search By Body Type      Coupe
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Price From     2 000
    Quick Search By Price To       50 000
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search By Type Of Fuel   benzyna
    Quick Search

SearchVanRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Vans
    Choose Rent Option
    Quick Search By Body Type      Coupe
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Price From     2 000
    Quick Search By Price To       50 000
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search By Type Of Fuel   benzyna
    Quick Search

SearchTruckSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trucks
    Choose Sale Option
    Quick Search By Purpose
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search By Km From
    Quick Search By Km To
    Quick Search

SearchTruckRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trucks
    Choose Rent Option
    Quick Search By Purpose
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search By Km From
    Quick Search By Km To
    Quick Search

SearchConstructionCarSaleCredit
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Construction Cars
    Choose Sale Option
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Aplly For A Loan
    Quick Search

SearchConstructionCarRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Construction Cars
    Choose Rent Option
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search

SearchTrailerSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trailers
    Choose Sale Option
    Quick Search By Purpose
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search

SearchTrailerRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trailers
    Choose Rent Option
    Quick Search By Purpose
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search

SearchAgriculturalVehiclesSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Agricultural Vehicles
    Choose Sale Option
    Quick Search By Purpose
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search

SearchAgriculturalVehiclesRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Agricultural Vehicles
    Choose Rent Option
    Quick Search By Purpose
    Quick Search By Brand          BMW
    Quick Search By Details        Seria 3
    Quick Search By Year From      1994
    Quick Search By Year To        1997
    Quick Search
