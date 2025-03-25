*** Settings ***
Documentation    Smoke Test: Relatórios
Resource         ${EXECDIR}/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao front


*** Variables ***
${Caminho_Screenshots}=          ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Prints-Sucesso/Parques_Naturais/Front/Relatórios/
${Caminho_Screenshots_erros}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Prints-Erros/Parques_Naturais/Front/Relatórios/


*** Keywords ***

Relatorios
    [Arguments]            ${janela}
    SikuliLibrary.Click    Cadastros
    repetidor de teclas    right        3
    RPA.Windows.Click      ${janela}

Fechar janela
    Set Anchor           Aplicativo
    RPA.Windows.Click    Fechar
    Clear Anchor

*** Test Cases ***
Resumo Geral
    [Teardown]              Take Screenshot               ${Caminho_Screenshots_erros}Resumo Geral        
    Relatorios              Resumo Geral
    RPA.Windows.Get Text    Resumo de Movimentação (1)
    Screenshot              Resumo de Movimentação (1)    ${Caminho_Screenshots}Resumo de Movimentação
    Fechar janela

Fechamento de Caixa
    [Teardown]              Take Screenshot            ${Caminho_Screenshots_erros}Fechamento de Caixa    
    Relatorios              Fechamento de Caixa
    RPA.Windows.Get Text    Fechamento de Caixa (1)
    Screenshot              Fechamento de Caixa (1)    ${Caminho_Screenshots}Fechamento de Caixa
    Fechar janela

Formas de Pagamento
    [Teardown]              Take Screenshot                         ${Caminho_Screenshots_erros}Formas de Pagamento           
    Relatorios              Formas de Pagamento
    RPA.Windows.Get Text    Relatório de Formas de Pagamento (1)
    Screenshot              Relatório de Formas de Pagamento (1)    ${Caminho_Screenshots}Relatório de Formas de Pagamento
    Fechar janela

Formas de Pagamento Agrupada
    [Teardown]              Take Screenshot                                   ${Caminho_Screenshots_erros}Formas de Pagamento Agrupada            
    Relatorios              Formas de Pagamento Agrupada
    RPA.Windows.Get Text    Relatório de Formas de Pagamento Agrupadas (1)
    Screenshot              Relatório de Formas de Pagamento Agrupadas (1)    ${Caminho_Screenshots}Relatório de Formas de Pagamento Agrupadas
    Fechar janela

Bilhetes Isentos
    [Teardown]              Take Screenshot                      ${Caminho_Screenshots_erros}Bilhetes Isentos           
    Relatorios              Bilhetes Isentos
    RPA.Windows.Get Text    Relátorio de Bilhetes Isentos (1)
    Screenshot              Relátorio de Bilhetes Isentos (1)    ${Caminho_Screenshots}Relátorio de Bilhetes Isentos
    Fechar janela

Lançamento de Isenções
    [Teardown]              Take Screenshot                             ${Caminho_Screenshots_erros}Lançamento de Isenções            
    Relatorios              Lançamentos de Isenções
    RPA.Windows.Get Text    Relatório de Lançamentos de Isenções (1)
    Screenshot              Relatório de Lançamentos de Isenções (1)    ${Caminho_Screenshots}Relatório de Lançamentos de Isenções
    Fechar janela

Lançamentos de Reservas
    [Teardown]              Take Screenshot                             ${Caminho_Screenshots_erros}Lançamentos de Reservas           
    Relatorios              Lançamentos de Reservas
    RPA.Windows.Get Text    Relatório de Lançamentos de Reservas (1)
    Screenshot              Relatório de Lançamentos de Reservas (1)    ${Caminho_Screenshots}Relatório de Lançamentos de Reservas
    Fechar janela

Bilhetes Reimpressos
    [Teardown]              Take Screenshot                          ${Caminho_Screenshots_erros}Bilhetes Reimpressos           
    Relatorios              Bilhetes Reimpressos
    RPA.Windows.Get Text    Relatório de Bilhetes Reimpressos (1)
    Screenshot              Relatório de Bilhetes Reimpressos (1)    ${Caminho_Screenshots}Relatório de Bilhetes Reimpressos
    Fechar janela

Bilhetes Cancelados
    [Teardown]              Take Screenshot                         ${Caminho_Screenshots_erros}Bilhetes Cancelados           
    Relatorios              Bilhetes Cancelados
    RPA.Windows.Get Text    Relatório de Bilhetes Cancelados (1)
    Screenshot              Relatório de Bilhetes Cancelados (1)    ${Caminho_Screenshots}Relatório de Bilhetes Cancelados
    Fechar janela

Desconto de Venda
    [Teardown]              Take Screenshot                        ${Caminho_Screenshots_erros}Desconto de Venda            
    Relatorios              Desconto de Venda
    RPA.Windows.Get Text    Relatório de Desconto por Venda (1)
    Screenshot              Relatório de Desconto por Venda (1)    ${Caminho_Screenshots}Relatório de Desconto por Venda
    Fechar janela

Bilhetes por Tipo de Autorização
    [Teardown]              Take Screenshot                                                          ${Caminho_Screenshots_erros}Bilhetes por Tipo de Autorização                               
    Relatorios              Bilhetes por Tipo de Autorização
    RPA.Windows.Get Text    Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria (1)
    Screenshot              Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria (1)    ${Caminho_Screenshots}Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria
    Fechar janela

Guias
    [Teardown]              Take Screenshot           ${Caminho_Screenshots_erros}Guias
    Relatorios              Guias
    RPA.Windows.Get Text    Relatório de Guias (1)
    Screenshot              Relatório de Guias (1)    ${Caminho_Screenshots}Relatório de Guias
    Fechar janela