*** Settings ***

Resource  ../resources/baseWrapper.robot

Variables  ../pages/locators.py

*** Keywords ***
Enter Ad Title
    [Arguments]  ${title_text}
    Set Text To Element On Page  ${Form_title}  ${title_text}

Select Ad Type
    Click Element On Page  ${Form_AdType}
    Click Element On Page  ${AdTypeDet_forSale}

Select Specific Type
    Click Element On Page  ${Form_type}
    Click Element On Page  ${typeDet_standAlone}

Set Ad Price
    [Arguments]  ${price_text}
    Click Element On Page  ${Form_price}
    set text to element on page  ${priceDet_price}  ${price_text}
    Click Element On Page  ${priceDet_Ok}

Select Ad Amenities
    Click Element On Page  ${Form_amenities}
    Click Element On Page  ${amenitiesDet_balcony}
    Click Element On Page  ${amenitiesDet_ready}

Set Ad Bedrooms
    Click Element On Page  ${Form_bedrooms}
    Click Element On Page  ${bedroomsDet_2}

Set Ad Bathrooms
    Click Element On Page  ${Form_bathrooms}
    Click Element On Page  ${bathroomsDet_2}

Set Property Area
    [Arguments]  ${area_text}
    set text to element on page  ${Form_area}  ${area_text}

Select Compound
    Click Element On Page  ${Form_compound}
    Click Element On Page  ${compoundDet_name}

Set Ad Description
    [Arguments]  ${desc_text}
    set text to element on page  ${Form_description}  ${desc_text}

Set Ad Location
    [Arguments]  ${location_text}
    Click Element On Page  ${Form_location}
    set text to element on page  ${locationDet_searchBox}  ${location_text}
    Click Element On Page  ${locationDet_specityArea}

Set Name Phone and Email
    [Arguments]  ${name}  ${email}  ${phone}
    set text to element on page  ${Form_name}  ${name}
    set text to element on page  ${Form_email}  ${email}
    set text to element on page  ${Form_phone}  ${phone}

Filling Form Happy Scenario
    [Arguments]  ${title_text}  ${price_text}  ${area_text}  ${desc_text}  ${location_text}  ${name}  ${email}  ${phone}
    Enter Ad Title  ${title_text}
    Select Ad Type
    Select Specific Type
    Set Ad Price  ${price_text}
    Scroll vertically  85  20
    Select Ad Amenities
    Set Ad Bedrooms
    Set Ad Bathrooms
    Set Property Area  ${area_text}
    Select Compound
    Scroll vertically  80  10
    Set Ad Description  ${desc_text}
    Set Ad Location  ${location_text}
    Set Name Phone and Email  ${name}  ${email}  ${phone}
    Scroll vertically  90  10


