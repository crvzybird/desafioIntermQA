*** Settings ***
Library     SeleniumLibrary
Resource    ../page_objects/login_page.robot
Resource    ../page_objects/logar_page.robot
Resource    ../page_objects/movimentacoes_page.robot
Resource    ../page_objects/salvarMovimentacao_page.robot
Resource    ../global_keywords.robot
Resource    ./movimentacao_keywords.robot
*** Test Cases ***

Realizar Criação de uma Movimentação com sucesso como usuário logado
    Abra o Navegador na Página de Login
    Preencha com o Email fulano@fulano
    Preencha com a Senha fulano
    Clica no Botão Entrar
    Clica no Menu Criar Movimentação
    Checa se a URL Atual é a de Movimentação
    Selecione no campo Tipo da Movimentação a opção Receita
    Preencha o campo Data da Movimentação com valor válido
    Preencha o campo Data do Pagamento com valor válido
    Preencha o campo Descrição com valor válido
    Preencha o campo Interessado com valor válido
    Preencha o campo Valor com valor válido
    Selecione no campo Conta a opção fulano
    Selecione no campo Situação a opção Pago
    Clica no Botão Salvar
    Checa se Mensagem de Sucesso é Movimentação adicionada com sucesso! para Movimentação
    Checa se a URL Atual é a de Movimentação Salva

