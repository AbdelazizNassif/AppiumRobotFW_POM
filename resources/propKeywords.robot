*** Settings ***

Resource  ../resources/baseWrapper.robot

Variables  ../pages/locators.py

*** Keywords ***
Click Properties As Major Category
    Click Element On Page  ${Prop_propertiesCategory}
    page should contain element  ${Prop_villasForSaleCategory}

CLick Villas For Sale As Minor Category
    Click Element On Page  ${Prop_villasForSaleCategory}
    page should contain element  ${Form_title}

Open To Ad Form
    Click Properties As Major Category
    CLick Villas For Sale As Minor Category

