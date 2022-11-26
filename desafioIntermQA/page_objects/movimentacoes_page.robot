*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary

*** Variables ***
${MOVIMENTACAO_URL}         https://seubarriga.wcaquino.me/movimentacao
${MOVIMENTACAO_BUTTON}      xpath=//a[text()[contains(.,'Criar Movimentação')]]
${TIPO_MOV}                 xpath=//option[text()[contains(.,'Receita')]]
${DATA_MOV}                 data_transacao
${DATA_PAG}                 data_pagamento
${DESCRICAO}                descricao
${INTERESSADO}              interessado
${VALOR}                    valor
${CONTA}                    xpath=//option[text()[contains(.,'fulano')]]
${PAGO}                     status_pago
${SALVAR_BUTTON}            class=btn-primary
${date_m}                   11/09/2021
${date_p}                   07/11/2022

