*** Settings ***
Documentation    Suite description

Resource  ../resources/introKeywords.robot
Resource  ../resources/propKeywords.robot
Resource  ../resources/propertyAdFormKeywords.robot

Resource  ../testDataGenerator/genTestData.robot

Resource  ../testsSetup/testBase.robot

Suite Setup  Run Keywords   Open the AUT
Suite Teardown  Exit These Tests

*** Variables ***
#Test Data
${title_text}
${price_text}
${area_text}
${desc_text}
${location_text}
${name}
${email}
${phone}

*** Test Cases ***
Navigate To The Ad Form
    Navigate To Ad Details
    Open To Ad Form
    Filling Form Happy Scenario  ${title_text}  ${price_text}  ${area_text}  ${desc_text}  ${location_text}  ${name}  ${email}  ${phone}

*** Keywords ***
Open the AUT
    Open Olx Mena Application 	${server_url} 	${automationName}   ${platformName} 	${platformVersion}	${deviceName} 	${appApk_absPath}
    Wait Until Page Contains Element    ${Intro_egyptBtn}
    generate test data

Exit These Tests
    Close Application

generate test data
    ${title_text}  generateRandomPersonName  7
    Set Global Variable  ${title_text}
    ${price_text}  Set Variable  2000
    Set Global Variable  ${price_text}
    ${area_text}  Set Variable  2000
    Set Global Variable  ${area_text}
    ${desc_text}  generateRandomPersonName  7
    Set Global Variable  ${desc_text}
    ${location_text}  Set Variable  Maadi
    Set Global Variable  ${location_text}
    ${name}  generateRandomPersonName  7
    Set Global Variable  ${name}
    ${email}  generateRandomEmail
    Set Global Variable  ${email}
    ${phone}  generateRandomPhoneNumber
    Set Global Variable  ${phone}


