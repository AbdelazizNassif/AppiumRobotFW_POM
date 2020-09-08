*** Settings ***
Library  AppiumLibrary


*** Keywords ***
Click Element On Page
    [Arguments]  ${element}
    Wait Until Page Contains Element  ${element}
    Click Element  ${element}

Set Text To Element On Page
    [Arguments]  ${element}  ${text}
    Wait Until Page Contains Element  ${element}
    Input Text  ${element}  ${text}

Scroll vertically
    [Arguments]  ${start_y}  ${end_y}
    Swipe By Percent 	50  ${start_y} 	50 	${end_y} 	# Swipes down

Allow Popup Permission
    [Arguments]  ${element}
    Click Element On Page  ${element}