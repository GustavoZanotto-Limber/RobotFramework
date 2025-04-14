*** Settings ***
Documentation    Smoke Test: Fluxo de Caixa
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao financeiro


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Fluxo de Caixa/    

*** Keywords ***

Fluxo de Caixa
    Cadastros
    repetidor de teclas    right    10

*** Test Cases ***

Fluxo de Caixa a Realizar (Projetado)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Fluxo de Caixa a Realizar (Projetado)
    Fluxo de Caixa
    RPA.Windows.Click         Fluxo de Caixa a Realizar (Projetado)
    RPA.Windows.Get Text      Fluxo de Caixa Projetado (A Realizar) (1)
    BaseDesktop.Screenshot    Fluxo de Caixa Projetado (A Realizar) (1)    ${Caminho_Screenshots}Fluxo de Caixa a Realizar (Projetado)
    Fechar janela

Fluxo de Caixa Realizado    
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Fluxo de Caixa Realizado
    Fluxo de Caixa
    RPA.Windows.Click         Fluxo de Caixa Realizado
    RPA.Windows.Get Text      Fluxo de Caixa a Realizado (1)
    BaseDesktop.Screenshot    Fluxo de Caixa a Realizado (1)    ${Caminho_Screenshots}Fluxo de Caixa Realizado
    Fechar janela

Encerrar
    Encerrar tudo