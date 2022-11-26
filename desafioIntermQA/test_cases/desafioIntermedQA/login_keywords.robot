*** Keywords ***
# PRIORIDADE - 1
Checa se Mensagem de Sucesso é ${mensagem_esperada} para Login
    #Log To Console  Checa se Mensagem de Sucesso
    ${obtida_mensagem}=   Captura Text De Toast De Login
    #Log To Console  ${login_message}
    Should Contain  ${obtida_mensagem}    ${mensagem_esperada}

Checa se a URL Atual é a de Logado
    #Log To Console  Checa se a URL Atual é: ${URL}
    ${url}=     Get Location
    Should Be Equal     ${url}      ${LOGADO_URL}

Abra o Navegador na Página de Login

    Open Browser    ${LOGIN_URL}   ${BROWSER}

Preencha com o Email ${EMAIL}

    Input Text  ${USER_EMAIL}    ${EMAIL}

Preencha com a Senha ${SENHA}
    #Log To Console  Entra com a Senha: ${SENHA}
    Input Text  ${USER_PASS}    ${SENHA}

Clica no Botão Entrar
    #Log To Console  Clicando no Botão
    Click Button    ${LOGIN_BUTTON}

Captura Text de Toast de Login
    ${toast_message}=   Get Text      ${TOAST_MESSAGE}
    [Return]    ${toast_message}