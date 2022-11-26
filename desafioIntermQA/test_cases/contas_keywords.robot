*** Keywords ***
#PRIORIDADE - 2
Cicla no Menu Contas
    #Log To Console  Clicando no Botão
    Wait Until Element Is Visible   ${CONTAS_BUTTON}
    Click Element                   ${CONTAS_BUTTON}

Seleciona a opção Adicionar
    Wait Until Element Is Visible   ${ADICIONAR}
    Click Element                   ${ADICIONAR}

Preencha o campo Nome com valor válido
    ${nome}                 FakerLibrary.Name
    Input Text  ${CONTA_NAME}    ${nome}

Clica no Botão Salvar
    #Log To Console  Clicando no Botão
    Click Button    ${SALVAR_BUTTON}

Captura Text de Toast de Conta
    Wait Until Element Is Visible     class=alert-success
    ${toast_message}=   Get Text      ${TOAST_MESSAGE}
    [Return]    ${toast_message}

Checa se Mensagem de Sucesso é ${mensagem_esperada} para Conta
    #Log To Console  Checa se Mensagem de Sucesso
    ${obtida_mensagem}=   Captura Text De Toast De Conta
    #Log To Console  ${login_message}
    Should Contain  ${obtida_mensagem}    ${mensagem_esperada}

Checa se a URL Atual é a de Adicionar Conta
     #Log To Console  Checa se a URL Atual é: ${URL}
     ${url}=     Get Location
     Should Be Equal     ${url}      ${ADD_CONTA_URL}

Checa se a URL Atual é a de Conta Salva
    #Log To Console  Checa se a URL Atual é: ${URL}
    ${url}=     Get Location
    Should Be Equal     ${url}      ${CONTA_SALVA_URL}