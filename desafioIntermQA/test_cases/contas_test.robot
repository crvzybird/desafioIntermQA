*** Settings ***
Library     SeleniumLibrary
Resource    ../page_objects/login_page.robot
Resource    ../page_objects/logar_page.robot
Resource    ../page_objects/contas_page.robot
Resource    ../page_objects/addConta_page.robot
Resource    ../page_objects/salvarConta_page.robot
Resource    ../global_keywords.robot
Resource    ./contas_keywords.robot
*** Test Cases ***

Realizar Criação de uma Conta, com sucesso como usuário logado
    Abra o Navegador na Página de Login
    Preencha com o Email fulano@fulano
    Preencha com a Senha fulano
    Clica no Botão Entrar
    Cicla no Menu Contas
    Seleciona a opção Adicionar
    Checa se a URL Atual é a de Adicionar Conta
    Preencha o campo Nome com valor válido
    Clica no Botão Salvar
    Checa se Mensagem de Sucesso é Conta adicionada com sucesso! para Conta
    Checa se a URL Atual é a de Conta Salva

