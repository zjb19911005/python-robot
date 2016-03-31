*** Settings ***
Default Tags      Junior
Test Timeout
Library           Selenium2Library

*** Test Cases ***
login
    [Timeout]
    Open Browser    http://testsso.shishike.com/cas/login?service=http://testb.shishike.com/cas    chrome
    Sleep    3S
    Input Text    id=loginId    4821
    Clear Element Text    id=username
    Input Text    id=username    admin
    Clear Element Text    id=password
    Input Text    id=password    a123456
    Input Text    id=captcha    ww
    Click Button    name=submit1
    Sleep    2S
    Input Text    id=loginId    4881
    Clear Element Text    id=username
    Input Text    id=username    admin
    Clear Element Text    id=password
    Input Text    id=password    a12345678
    Input Text    id=captcha    ww
    Click Button    name=submit1
    Sleep    2S
    Input Text    id=loginId    4881
    Clear Element Text    id=username
    Input Text    id=username    admin123
    Clear Element Text    id=password
    Input Text    id=password    a123456
    Input Text    id=captcha    ww
    Click Button    name=submit1
    Sleep    2S
    Input Text    id=loginId    4881
    Clear Element Text    id=username
    Input Text    id=username    admin
    Clear Element Text    id=password
    Input Text    id=password    a123456
    Input Text    id=captcha    ww
    Click Button    name=submit1

logout
    ${PREV TEST STATUS}
    sleep    3s
    Click Element    name=营销
