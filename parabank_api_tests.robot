*** Settings ***
Documentation    Suite description
Library          RequestsLibrary

*** Test Cases ***
Check data for customer 12212
    Create Session  parabank  https://parabank.parasoft.com/parabank/services/bank/  headers={'Accept': 'application/json'}
    ${response}=  GET On Session  parabank  /customers/12212
    Should Be Equal As Strings    John  ${response.json()}[firstName]
