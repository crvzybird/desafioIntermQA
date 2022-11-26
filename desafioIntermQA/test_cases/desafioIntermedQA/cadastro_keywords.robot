*** Keywords ***
# PRIORIDADE - 1
Abra o Navegador na Página de Cadastro

    Open Browser    ${CADASTRO_URL}   ${BROWSER}

Preencha o campo Nome com valor válido
    ${nome}                 FakerLibrary.Name
    Input Text  ${USER_NAME}    ${nome}

Preencha o campo Email com valor válido
    ${email}                FakerLibrary.FreeEmail
    Input Text  ${USER_EMAIL}    ${email}

Preencha o campo Senha com valor válido
    ${senha}                FakerLibrary.Password
    Input Text  ${USER_PASS}    ${senha}

Clica no Botão Cadastrar
    #Log To Console  Clicando no Botão
    Click Button    ${CADASTRAR_BUTTON}

Captura Text de Toast de Cadastro
    Wait Until Element Is Visible     class=alert-success
    ${toast_message}=   Get Text      ${TOAST_MESSAGE}
    [Return]    ${toast_message}

Checa se Mensagem de Sucesso é ${mensagem_esperada} para Cadastro
    #Log To Console  Checa se Mensagem de Sucesso
    ${obtida_mensagem}=   Captura Text De Toast De Cadastro
    #Log To Console  ${login_message}
    Should Contain  ${obtida_mensagem}    ${mensagem_esperada}

Checa se a URL Atual é a de Usuário Cadastrado
    #Log To Console  Checa se a URL Atual é: ${URL}
    ${url}=     Get Location
    Should Be Equal     ${url}      ${CADASTRADO_URL}