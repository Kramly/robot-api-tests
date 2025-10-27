*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get Users Should Return 200
    Create Session    api    ${BASE_URL}
    ${response}=    Get Request    api    /users
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    ${response.json()[0]['name']}

Create New Post Should Return 201
    Create Session    api    ${BASE_URL}
    ${payload}=    Create Dictionary    title=Robot Test    body=This is a test post    userId=1
    ${response}=    Post Request    api    /posts    json=${payload}
    Should Be Equal As Integers    ${response.status_code}    201
    Dictionary Should Contain Key    ${response.json()}    id
