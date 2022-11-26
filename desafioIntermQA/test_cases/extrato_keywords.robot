*** Keywords ***
#PRIORIDADE - 3
Clica no Menu Resumo Mensal
    Wait Until Element Is Visible   ${EXTRATO_BUTTON}
    Click Element                   ${EXTRATO_BUTTON}

Clicar no ícone X no campo Ações para Remover Movimentação
    Wait Until Element Is Visible   ${REMOVER_BUTTON}
    Click Element                   ${REMOVER_BUTTON}

Captura Text de Toast de Remoção
    Wait Until Element Is Visible     class=alert-success
    ${toast_message}=   Get Text      ${TOAST_MESSAGE}
    [Return]    ${toast_message}

Checa se Mensagem de Sucesso é ${mensagem_esperada} para Extrato
    #Log To Console  Checa se Mensagem de Sucesso
    ${obtida_mensagem}=   Captura Text De Toast De Remoção
    #Log To Console  ${login_message}
    Should Contain  ${obtida_mensagem}    ${mensagem_esperada}

Checa se a URL Atual é a de Extrato
     #Log To Console  Checa se a URL Atual é: ${URL}
     ${url}=     Get Location
     Should Be Equal     ${url}      ${EXTRATO_URL}