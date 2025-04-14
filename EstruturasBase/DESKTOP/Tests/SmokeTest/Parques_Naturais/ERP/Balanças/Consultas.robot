*** Settings ***
Documentation    Smoke Test: Balança
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao balança


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Balanças/Consultas/    

*** Keywords ***

Consultas

    Cadastros
    repetidor de teclas    right    3

*** Test Cases ***

Romaneios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Romaneios
    Consultas
    RPA.Windows.Click         Romaneios 
    RPA.Windows.Get Text      Consulta de Romaneios (1)
    BaseDesktop.Screenshot    Consulta de Romaneios (1)    ${Caminho_Screenshots}Romaneios
    Fechar janela

Romaneios Excluídos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Romaneios Excluídos
    Consultas
    RPA.Windows.Click         Romaneios Excluídos
    RPA.Windows.Get Text      Consulta Romaneios Excluídos (1)
    BaseDesktop.Screenshot    Consulta Romaneios Excluídos (1)    ${Caminho_Screenshots}Romaneios Excluídos
    Fechar janela

Movimentações da Balança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Movimentações da Balança
    Consultas
    RPA.Windows.Click         Movimentações da Balança
    RPA.Windows.Get Text      Movimentação da Balança (1)
    BaseDesktop.Screenshot    Movimentação da Balança (1)    ${Caminho_Screenshots}Movimentações da Balança
    Fechar janela

Lançamentos de Saída
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Lançamentos de Saída
    Consultas
    RPA.Windows.Click         Lançamentos de Saída
    RPA.Windows.Get Text      Lançamentos de Saída (1)
    BaseDesktop.Screenshot    Lançamentos de Saída (1)    ${Caminho_Screenshots}Lançamentos de Saída
    Fechar janela

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Consultas Personalizadas
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    Fechar janela

Saldo de Terceiro
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Saldo de Terceiro
    Consultas
    RPA.Windows.Click         Saldo de Terceiro 
    RPA.Windows.Get Text      Saldos de Terceiros (1)
    BaseDesktop.Screenshot    Saldos de Terceiros (1)    ${Caminho_Screenshots}Saldo de Terceiro
    Fechar janela

Movimentação de Terceiro
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Movimentação de Terceiro
    Consultas
    RPA.Windows.Click         Movimentação de Terceiro 
    RPA.Windows.Get Text      Movimentação de Terceiros (1)
    BaseDesktop.Screenshot    Movimentação de Terceiros (1)    ${Caminho_Screenshots}Movimentação de Terceiro
    Fechar janela

Encerrar
    Encerrar tudo


