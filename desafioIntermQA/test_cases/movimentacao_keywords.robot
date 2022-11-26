*** Keywords ***
#PRIORIDADE 2
Clica no Menu Criar Movimentação
    #Log To Console  Clicando no Botão
    Wait Until Element Is Visible   ${MOVIMENTACAO_BUTTON}
    Click Element                   ${MOVIMENTACAO_BUTTON}

Selecione no campo Tipo da Movimentação a opção Receita
    Click Element                   ${TIPO_MOV}

Preencha o campo Data da Movimentação com valor válido

    Input Text  ${DATA_MOV}     ${date_m}
Preencha o campo Data do Pagamento com valor válido

    Input Text  ${DATA_PAG}     ${date_p}

Preencha o campo Descrição com valor válido
    ${desc}                 FakerLibrary.Text
    Input Text  ${DESCRICAO}    ${desc}

Preencha o campo Interessado com valor válido
    ${nome}                 FakerLibrary.Name
    Input Text  ${INTERESSADO}    ${nome}

Preencha o campo Valor com valor válido
    ${val}                 FakerLibrary.Random Int
    Input Text  ${VALOR}    ${val}

Selecione no campo Conta a opção fulano
    Click Element                   ${CONTA}

Selecione no campo Situação a opção Pago
    Click Element                   ${PAGO}

Clica no Botão Salvar
    #Log To Console  Clicando no Botão
    Click Button    ${SALVAR_BUTTON}

Captura Text de Toast de Movimentação
    Wait Until Element Is Visible     class=alert-success
    ${toast_message}=   Get Text      ${TOAST_MESSAGE}
    [Return]    ${toast_message}

Checa se Mensagem de Sucesso é ${mensagem_esperada} para Movimentação
    #Log To Console  Checa se Mensagem de Sucesso
    ${obtida_mensagem}=   Captura Text De Toast De Movimentação
    #Log To Console  ${login_message}
    Should Contain  ${obtida_mensagem}    ${mensagem_esperada}

Checa se a URL Atual é a de Movimentação
     #Log To Console  Checa se a URL Atual é: ${URL}
     ${url}=     Get Location
     Should Be Equal     ${url}      ${MOVIMENTACAO_URL}

Checa se a URL Atual é a de Movimentação Salva
    #Log To Console  Checa se a URL Atual é: ${URL}
    ${url}=     Get Location
    Should Be Equal     ${url}      ${CONTA_SALVA_URL}