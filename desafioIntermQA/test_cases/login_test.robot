*** Settings ***
Library     SeleniumLibrary
Resource    ../page_objects/login_page.robot
Resource    ../page_objects/logar_page.robot
Resource    ./login_keywords.robot
Resource    ../global_keywords.robot
*** Test Cases ***

Realizar login com sucesso utilizando credenciais válidas
    Abra o Navegador na Página de Login
    Preencha com o Email fulano@fulano
    Preencha com a Senha fulano
    Clica no Botão Entrar
    Checa se Mensagem de Sucesso é Bem vindo para Login
    Checa se a URL Atual é a de Logado
