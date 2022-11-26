*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${EXTRATO_URL}       https://seubarriga.wcaquino.me/extrato
${EXTRATO_BUTTON}        xpath=//a[text()[contains(.,'Resumo Mensal')]]
${REMOVER_BUTTON}        xpath=//*[contains(@class,'glyphicon-remove-circle')]
