*** Settings ***
Library  AppiumLibrary

*** Variables ***
#Test Environment
${imp_wait}=  15
${appApk_absPath}=  C:\\Users\\AbdElAziz\\PycharmProjects\\Appium\\AUT\\com.olxmena.horizontal_2020-08-16.apk
${server_url}=  http://localhost:4723/wd/hub
${automationName}=  UiAutomator2
${platformName}=  Android
${platformVersion}=  8.0.0
${deviceName}=  emulator-5554

*** Keywords ***
Open Olx Mena Application
    [Arguments]  ${server_url}  ${automationName}  ${platformName}  ${platformVersion}  ${deviceName}  ${app_apk_directory}
    Open Application 	${server_url} 	automationName=${automationName}   platformName=${platformName} 	platformVersion=${platformVersion}	deviceName=${deviceName} 	app=${app_apk_directory}
configure selenium general options
    Set Appium Timeout  ${imp_wait}