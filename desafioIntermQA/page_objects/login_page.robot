*** Settings ***
Library     SeleniumLibrary
Resource    ../test_cases/login_keywords.robot
*** Variables ***

${LOGIN_URL}        https://seubarriga.wcaquino.me/login
${USER_EMAIL}       email
${USER_PASS}        senha
${LOGIN_BUTTON}     class=btn-primary

#xpath=//*[contains(@class,'btn btn-primary')]
