*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../global_keywords.robot
*** Variables ***

${CADASTRO_URL}         https://seubarriga.wcaquino.me/cadastro
${USER_NAME}            nome
${USER_EMAIL}           email
${USER_PASS}            senha
${CADASTRAR_BUTTON}     class=btn-primary


#xpath=//*[contains(@class,'btn btn-primary')]
