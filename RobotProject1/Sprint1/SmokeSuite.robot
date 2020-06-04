*** Settings ***
Library    SeleniumLibrary  

Suite Setup       Log     I am inside Test Suite Setup  
Suite Teardown    Log     I am inside Test Suite Teardown    
Test Setup        Log     I am inside Test Setup 
Test Teardown     Log     I am inside Test Teardown  

Default Tags               

*** Test Cases ***

LoginTestCase
    [Tags]    Smoke
    Log    Hello World....       
    
FirstSeleniumTest
    Open Browser    https://google.com  chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    login.salesforce.com
    Press Keys    name=q      ENTER    
    Sleep    5   
    Close Browser
    Log    Test Completed      
    
SalesforceLogin
    [Documentation]    This a Sample test case for login to SF
    Open Browser    ${URL}  chrome
    Set Browser Implicit Wait    10
    LoginKW
    Close Browser
    Log    Test Completed  
    Log    This test was executed by %{username} on %{os}
    
*** Variables ***
${URL}  https://login.salesforce.com
@{CREDENTIALS}  rajakumari.a@mstsolutions.com  Kumari@123
&{LOGINDATA}  username=rajakumari.a@mstsolutions.com  Password=Kumari@123

*** Keywords ***
LoginKW
    Input Text      id=username    &{LOGINDATA}[username]
    Input Password  id=password    &{LOGINDATA}[Password]
    Click Button    id=Login
    

          