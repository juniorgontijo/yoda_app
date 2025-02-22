*** Settings ***

Library         AppiumLibrary

*** Test Cases ***


Deve abrir a tela principal

    Open Application        http://localhost:4723
    ...                     platformName=Android
    ...                     deviceName=Android Emulator
    ...                     automationName=UIAutomator2
    ...                     app=${EXECDIR}/app/yodapp-beta.apk
    ...                     autoGrantPermissions=true
    ...                     appWaitActivity=*
    ...                     udid=emulator-5554

    Wait Until Page Contains        Yodapp
    Wait Until Page Contains        Mobile Training
    Wait Until Page Contains        by Papito