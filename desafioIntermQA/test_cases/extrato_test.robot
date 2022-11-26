*** Settings ***
Library     SeleniumLibrary
Resource    ../page_objects/login_page.robot
Resource    ../page_objects/logar_page.robot
Resource    ../page_objects/extrato_page.robot
Resource    ../page_objects/removerMovimentacao_page.robot
Resource    ../global_keywords.robot
Resource    ./extrato_keywords.robot
*** Test Cases ***

Realizar Remoção de uma Movimentação com sucesso como usuário logado
    Abra o Navegador na Página de Login
    Preencha com o Email fulano@fulano
    Preencha com a Senha fulano
    Clica no Botão Entrar
    Clica no Menu Resumo Mensal
    Checa se a URL Atual é a de Extrato
    Clicar no ícone X no campo Ações para Remover Movimentação
    Checa se Mensagem de Sucesso é Movimentação removida com sucesso! para Extrato
