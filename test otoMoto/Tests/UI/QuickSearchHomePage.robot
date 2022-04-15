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
    Sleep                         5s

SearchBike
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Bikes
    Quick Search By Body Type      Sportowy
    Quick Search By Brand          Honda
    Quick Search By Model          CBR
    Quick Search By Price From     2 000
    Quick Search By Price To       1 000 000
    Quick Search By Year From      2020
    Quick Search By Year To        2022
#    Quick Search By Capacity From  50
#    Quick Search By Capacity To    1 000
    Quick Search By Type Of Fuel   Benzyna
    Quick Search
    Sleep                          5s


SearchVanSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Vans
    Choose Sale Option
    Quick Search By Body Type      Pick-up
    Quick Search By Brand          Ford
    Quick Search By Price From     2 000
    Quick Search By Price To       200 000
    Quick Search By Year From      2007
    Quick Search By Year To        2022
    Quick Search By Type Of Fuel   Diesel
    Quick Search By Details        Ranger
    Quick Search
    Sleep                          5s

SearchVanRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Vans
    Choose Rent Option
    Quick Search By Body Type      Autolaweta
    Quick Search By Brand          Ivego
    Quick Search By Price From     2 000
    Quick Search By Price To       200 000
    Quick Search By Year From      1994
    Quick Search By Year To        2022
    Quick Search By Type Of Fuel   Diesel
    Quick Search By Details        Daily
    Quick Search
    Sleep                          5s

SearchTruckSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trucks
    Choose Sale Option
    Quick Search By Purpose        Betonomieszarka
    Quick Search By Brand          MAN
    Quick Search By Year From      2010
    Quick Search By Year To        2022
    Quick Search By Km From        20 000
    Quick Search By Km To          250 000
    Quick Search By Details        TGS
    Quick Search
    Sleep                          5s

SearchTruckRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trucks
    Choose Rent Option
    Quick Search By Purpose        Pojazdy użyteczności publicznej
    Quick Search By Brand          Mercedes-Benz
    Quick Search By Year From      2010
    Quick Search By Year To        2022
    Quick Search By Km From        20 000
    Quick Search By Km To          250 000
    Quick Search By Details        Econic
    Quick Search
    Sleep                          5s

SearchConstructionCarSaleCredit
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Construction Cars
    Choose Sale Option
    Quick Search By Brand          JCB
    Quick Search By Year From      2010
    Quick Search By Year To        2022
    Aplly For A Loan
    Quick Search By Details        CTS
    Quick Search
    Sleep                          5s

SearchConstructionCarRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Construction Cars
    Choose Rent Option
    Quick Search By Brand          JCB
    Quick Search By Year From      2010
    Quick Search By Year To        2022
    Quick Search By Details        Contractor
    Quick Search
    Sleep                          5s

SearchTrailerSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trailers
    Choose Sale Option
    Quick Search By Purpose        Naczepy chłodnie i izotermy
    Quick Search By Brand          Schmitz Cargobull
    Quick Search By Year From      2020
    Quick Search By Year To        2021
    Quick Search By Details        Doppelstock
    Quick Search
    Sleep                          5s

SearchTrailerRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Trailers
    Choose Rent Option
    Quick Search By Purpose        Naczepy burtowe i plandeki
    Quick Search By Brand          Krone
    Quick Search By Year From      2011
    Quick Search By Year To        2019
    Quick Search By Details        SD
    Quick Search
    Sleep                          5s

SearchAgriculturalVehiclesSale
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Agricultural Vehicles
    Choose Sale Option
    Quick Search By Purpose        Opryskiwacze
    Quick Search By Brand          Amazone
    Quick Search By Year From      2000
    Quick Search By Year To        2013
    Quick Search By Details        UX
    Quick Search
    Sleep                          5s

SearchAgriculturalVehiclesRent
    [tags]  Smoke
    Accepting Cookies
    Verify Home Page Is Open        ${siteUrl}
    Quick Search Agricultural Vehicles
    Choose Rent Option
    Quick Search By Purpose        Kombajny
    Quick Search By Brand          Claas
    Quick Search By Year From      2010
    Quick Search By Year To        2020
    Quick Search By Details        Lexion
    Quick Search
    Sleep                          5s
