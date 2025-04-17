*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao Estoque


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Lotes/    

*** Keywords ***

Lotes 
    Cadastros
    repetidor de teclas     right     3

*** Test Cases ***

Manutenção de Lotes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Manutenção de Lotes
    Lotes 
    RPA.Windows.Click       Manutenção de Lotes
    RPA.Windows.Get Text    Manutenção de Lotes (1)
    BaseDesktop.Screenshot  Manutenção de Lotes (1)    ${Caminho_Screenshots}Manutenção de Lotes
    Fechar janela

Saldo de Lotes/Sintético
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Saldo de Lotes_Sintético
    Lotes 
    RPA.Windows.Click       Saldo de Lotes/Sintético
    RPA.Windows.Get Text    Consulta de Lotes/Sintético (1)
    BaseDesktop.Screenshot  Consulta de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldo de Lotes_Sintético
    Fechar janela

Movimentação de Lotes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Movimentação de Lotes
    Lotes 
    RPA.Windows.Click       Movimentação de Lotes
    RPA.Windows.Get Text    Relatório de Movimentação de Lotes (1)
    BaseDesktop.Screenshot  Relatório de Movimentação de Lotes (1)    ${Caminho_Screenshots}Movimentação de Lotes
    Fechar janela

Encerrar
    Encerrar tudo