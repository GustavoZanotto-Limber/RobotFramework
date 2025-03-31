*** Settings ***
Documentation    Smoke Test: Manutenções
Resource         ${EXECDIR}/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao front

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Manutenções/

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    right    1

*** Test Cases    ***

Emissão de Bilhetes
    [Teardown]                Caso aconteça erro         ${Caminho_Screenshots}                       ERRO Emissão de Bilhetes
    Manutenções
    RPA.Windows.Click         Emissão de Bilhetes
    RPA.Windows.Get Text      Emissão de Bilhetes (1)
    Screenshot                Emissão de Bilhetes (1)    ${Caminho_Screenshots}Emissão de Bilhetes
    Fechar janela
    RPA.Desktop.Press Keys    Left
    RPA.Desktop.Press Keys    Enter

Reimpressão de Bilhetes
    [Teardown]              Caso aconteça erro             ${Caminho_Screenshots}                           ERRO Reimpressão de Bilhetes
    Manutenções
    RPA.Windows.Click       Reimpressão de Bilhetes
    RPA.Windows.Get Text    Reimpressão de Bilhetes (1)
    Screenshot              Reimpressão de Bilhetes (1)    ${Caminho_Screenshots}Reimpressão de Bilhetes
    Fechar janela

Cancelamentos de Bilhetes
    [Teardown]              Caso aconteça erro              ${Caminho_Screenshots}                            ERRO Cancelamento de Bilhetes
    Manutenções
    RPA.Windows.Click       Cancelamento de Bilhetes
    RPA.Windows.Get Text    Cancelamento de Bilhetes (1)
    Screenshot              Cancelamento de Bilhetes (1)    ${Caminho_Screenshots}Cancelamento de Bilhetes
    RPA.Windows.Click       Fechar

Remarcações de Visitas
    [Teardown]              Caso aconteça erro       ${Caminho_Screenshots}                          ERRO Remarcações de Visitas
    Manutenções
    RPA.Windows.Click       Remarcação de Visitas
    RPA.Windows.Get Text    Remarcação de Vendas
    Screenshot              Remarcação de Vendas     ${Caminho_Screenshots}Remarcações de Visitas
    RPA.Windows.Click       Fechar

Reservas -> Lançamentos
    [Teardown]                Caso aconteça erro            ${Caminho_Screenshots}Reservas/                          ERRO Lançamento de Reservas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Lançamento de Reservas (1)
    Screenshot                Lançamento de Reservas (1)    ${Caminho_Screenshots}Reservas/Lançamento de Reservas
    Fechar janela

Reservas -> Cancelamento
    [Teardown]                Caso aconteça erro              ${Caminho_Screenshots}Reservas/                            ERRO Cancelamento de Reservas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Cancelamento de Reservas (1)
    Screenshot                Cancelamento de Reservas (1)    ${Caminho_Screenshots}Reservas/Cancelamento de Reservas
    Fechar janela

Reservas -> Alteração
    [Teardown]                Caso aconteça erro                        ${Caminho_Screenshots}Reservas/                         ERRO Alteração de Reservas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Alteração de Reservas/Isenções/Web (1)
    Screenshot                Alteração de Reservas/Isenções/Web (1)    ${Caminho_Screenshots}Reservas/Alteração de Reservas
    Fechar janela

Reservas -> Remarcação de Visitas
    [Teardown]                Caso aconteça erro          ${Caminho_Screenshots}Reservas/                         ERRO Remarcação de Visitas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    r
    Sleep                     1s
    RPA.Windows.Get Text      Consulta de Reservas (1)
    Screenshot                Consulta de Reservas (1)    ${Caminho_Screenshots}Reservas/Remarcação de Visitas
    RPA.Windows.Click         Fechar

Lançamento de Isenções
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}                          ERRO Lançamento de Isenções
    Manutenções
    RPA.Windows.Click       Lançamento de Isenções
    RPA.Windows.Get Text    Lançamento de Isenção (1)
    Screenshot              Lançamento de Isenção (1)    ${Caminho_Screenshots}Lançamento de Isenções
    Fechar janela

Lançamento de Veículos
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                          ERRO Lançamento de Veículos
    Manutenções
    RPA.Windows.Click       Lançamento de Veículos
    RPA.Windows.Get Text    Lançamento de Veiculos (1)
    Screenshot              Lançamento de Veiculos (1)    ${Caminho_Screenshots}Lançamento de Veículos
    Fechar janela

Lançamento de Vouchers Pendentes
    [Teardown]              Caso aconteça erro                  ${Caminho_Screenshots}                                    ERRO Lançamento de Vouchers Pendentes
    Manutenções
    RPA.Windows.Click       Lançamento de Vouchers Pendentes
    RPA.Windows.Get Text    Alteração de Vouchers Bilhete
    Screenshot              Alteração de Vouchers Bilhete       ${Caminho_Screenshots}Lançamento de Vouchers Pendentes
    RPA.Windows.Click       Fechar

Comissões de Guias -> Pagamento
    [Teardown]                Caso aconteça erro        ${Caminho_Screenshots}Comissões de Guias/             ERRO Pagamento
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Comissões de Guias (1)
    Screenshot                Comissões de Guias (1)    ${Caminho_Screenshots}Comissões de Guias/Pagamento
    Fechar janela

Comissões de Guias -> Estorno
    [Teardown]                Caso aconteça erro          ${Caminho_Screenshots}Comissões de Guias/           ERRO Estorno
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Estorno de Comissões (1)
    Screenshot                Estorno de Comissões (1)    ${Caminho_Screenshots}Comissões de Guias/Estorno
    Fechar janela

Comissões de Guias -> Vincular Guia em Venda
    [Teardown]                Caso aconteça erro            ${Caminho_Screenshots}Comissões de Guias/                          ERRO Vincular Guia em Venda
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    v
    RPA.Windows.Get Text      Vincular Guia em Venda (1)
    Screenshot                Vincular Guia em Venda (1)    ${Caminho_Screenshots}Comissões de Guias/Vincular Guia em Venda
    Fechar janela

Comissões de Guias -> Relatório
    [Teardown]                Caso aconteça erro            ${Caminho_Screenshots}Comissões de Guias/             ERRO Relatório
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Comissões (1)
    Screenshot                Relatório de Comissões (1)    ${Caminho_Screenshots}Comissões de Guias/Relatório
    Fechar janela

Devoluções de Vendas
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}                        ERRO Devoluções de Vendas
    Manutenções
    RPA.Windows.Click       Devoluções de Vendas
    RPA.Windows.Get Text    Devolução de Vendas (1)
    Screenshot              Devolução de Vendas (1)    ${Caminho_Screenshots}Devoluções de Vendas
    Fechar janela

Configurações Totem
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}                       ERRO Configurações Totem
    Manutenções
    RPA.Windows.Click       Configurações Totem
    RPA.Windows.Get Text    Configurações Totem (1)
    Screenshot              Configurações Totem (1)    ${Caminho_Screenshots}Configurações Totem
    Fechar janela

Encerrar
    Encerrar tudo
