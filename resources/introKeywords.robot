*** Settings ***

Resource  ../resources/baseWrapper.robot

Variables  ../pages/locators.py

*** Keywords ***
Click Egypt As Country
    Click Element On Page  ${Intro_egyptBtn}
    page should contain element  ${Intro_registerBtn}

CLick Place An Ad
    Click Element On Page  ${Intro_placeAd}

Navigate To Ad Details
    Click Egypt As Country
    Go Back
    Allow Popup Permission  ${Intro_allowBtn}
    CLick Place An Ad
    Allow Popup Permission  ${Intro_allowBtn}
    Allow Popup Permission  ${Intro_allowBtn}
