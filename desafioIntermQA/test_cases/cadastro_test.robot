*** Settings ***
Library     SeleniumLibrary
Resource    ../page_objects/cadastro_page.robot
Resource    ../page_objects/cadastrarUsuario_page.robot
Resource    ../global_keywords.robot
Resource    ./cadastro_keywords.robot
*** Test Cases ***

Realizar Cadastro de Usuário com sucesso utilizando valores válidos
    Abra o Navegador na Página de Cadastro
    Preencha o campo Nome com valor válido
    Preencha o campo Email com valor válido
    Preencha o campo Senha com valor válido
    Clica no Botão Cadastrar
    Checa se Mensagem de Sucesso é Usuário inserido com sucesso para Cadastro
    Checa se a URL Atual é a de Usuário Cadastrado

