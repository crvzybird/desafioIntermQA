*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${LOGADO_URL}       https://seubarriga.wcaquino.me/logar
${TOAST_MESSAGE}    xpath=//*[contains(@class,'alert alert-success')]
