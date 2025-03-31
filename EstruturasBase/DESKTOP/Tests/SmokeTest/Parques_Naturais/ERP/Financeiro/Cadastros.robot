*** Settings ***
Documentation    Smoke Test: Cadastros
Resource         ${EXECDIR}/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao financeiro


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Cadastros/    

*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    [Teardown]              Caso aconteça erro       ${Caminho_Screenshots}         ERRO Cadastro de Terceiros
    Cadastros
    RPA.Desktop.Press Keys  enter   #retirar depois
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    Screenshot              Cadastro de Terceiros (1)    ${Caminho_Screenshots}Cadastro de Terceiros
    Fechar janela



Encerrar
    Encerrar tudo