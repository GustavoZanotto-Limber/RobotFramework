*** Settings ***
Documentation    Smoke Test: Cadastros
Resource         ${EXECDIR}/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao front


*** Variables ***

${Caminho_Screenshots}=          ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Prints-Sucesso/Parques_Naturais/Front/Cadastros/
${Caminho_Screenshots_erros}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Prints-Erros/Parques_Naturais/Front/Cadastros/      

*** Keywords ***

Cadastros
    SikuliLibrary.Click    Cadastros.png

Fechar janela
    Set Anchor           Aplicativo
    RPA.Windows.Click    Fechar
    Clear Anchor

*** Test Cases ***

Guias
    [Teardown]              Run Keyword If Test Failed    Take Screenshot                ${Caminho_Screenshots_erros}Guias    
    Cadastros
    RPA.Windows.Click       Guias
    RPA.Windows.Get Text    Principal
    Screenshot              Espaço de trabalho            ${Caminho_Screenshots}Guias
    Fechar janela

Isentos
    [Teardown]              Run Keyword If Test Failed    Take Screenshot                  ${Caminho_Screenshots_erros}Isentos    
    Cadastros
    RPA.Windows.Click       Isentos
    RPA.Windows.Get Text    Cadastro de Isento (1)
    Screenshot              Cadastro de Isento (1)        ${Caminho_Screenshots}Isentos
    Fechar janela

Agências
    [Teardown]                Run Keyword If Test Failed    Take Screenshot                   ${Caminho_Screenshots_erros}Agências    
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    Screenshot                Cadastro de Terceiros (1)     ${Caminho_Screenshots}Agências
    Fechar janela

Grupo de Agências
    [Teardown]                Run Keyword If Test Failed            Take Screenshot                            ${Caminho_Screenshots_erros}Grupo de Agências    
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Agências (1)
    Screenshot                Cadastro de Grupos de Agências (1)    ${Caminho_Screenshots}Grupo de Agências
    Fechar janela

Locais Estacionamento
    [Teardown]              Run Keyword If Test Failed               Take Screenshot                                ${Caminho_Screenshots_erros}Locais Estacionamento    
    Cadastros
    RPA.Windows.Click       Locais Estacionamento
    RPA.Windows.Get Text    Cadastro Locais de Estacionamento (1)
    Screenshot              Cadastro Locais de Estacionamento (1)    ${Caminho_Screenshots}Locais Estacionamento
    Fechar janela

Grupos de Bilhetes Totem
    [Teardown]              Run Keyword If Test Failed                  Take Screenshot                                   ${Caminho_Screenshots_erros}Grupos de Bilhetes Totem    
    Cadastros
    RPA.Windows.Click       Grupo Bilhetes Totem
    RPA.Windows.Get Text    Cadastro de Grupos de Bilhetes Totem (1)
    Screenshot              Cadastro de Grupos de Bilhetes Totem (1)    ${Caminho_Screenshots}Grupos de Bilhetes Totem
    Fechar janela

Grupos de Isenção
    [Teardown]              Run Keyword If Test Failed           Take Screenshot                            ${Caminho_Screenshots_erros}Grupos de Isenção    
    Cadastros
    RPA.Windows.Click       Grupos de Isenção
    RPA.Windows.Get Text    Cadastro de Grupos de Isenção (1)
    Screenshot              Cadastro de Grupos de Isenção (1)    ${Caminho_Screenshots}Grupos de Isenção
    Fechar janela

Tipos de Autorização
    [Teardown]              Run Keyword If Test Failed           Take Screenshot                            ${Caminho_Screenshots_erros}Tipos de Autorização    
    Cadastros
    RPA.Windows.Click       Tipos de Autorização
    RPA.Windows.Get Text    Cadastro de Tipos de Autorização (1)
    Screenshot              Cadastro de Tipos de Autorização (1)    ${Caminho_Screenshots}Tipos de Autorização
    Fechar janela

Tipos de Documentos
    [Teardown]              Run Keyword If Test Failed           Take Screenshot                            ${Caminho_Screenshots_erros}Tipos de Documentos 
    Cadastros
    RPA.Windows.Click       Tipos de Documentos
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    Screenshot              Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Tipos de Documentos
    Fechar janela