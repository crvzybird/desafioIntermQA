*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary

*** Variables ***

${CONTAS_BUTTON}        xpath=//*[contains(@class,'dropdown')]
${ADICIONAR}            xpath=/html/body/nav/div/div[2]/ul/li[2]/ul/li[1]
${CONTA_NAME}           nome
${SALVAR_BUTTON}        class=btn-primary

