*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao financeiro


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Cadastros/    

*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Terceiros/                         ERRO Cadastro de Terceiros
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros/Cadastro de Terceiros
    Fechar janela

Terceiros > Contatos > Registros de Contatos
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}Terceiros/Contatos/                         ERRO Registros de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Registros de Contatos
    RPA.Windows.Get Text    Registro de Contato (1)
    BaseDesktop.Screenshot  Registro de Contato (1)    ${Caminho_Screenshots}Terceiros/Contatos/Registros de Contatos
    RPA.Windows.Click       Fechar

Terceiros > Contatos > Tipo de Histórico de Contatos
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Contatos/                                   ERRO Tipo de Histórico de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Tipo de Histórico de Contatos
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    BaseDesktop.Screenshot                Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Tipo de Histórico de Contatos
    Fechar janela

Terceiros > Contatos > Atividades de Contatos
    [Teardown]              Caso aconteça erro                        ${Caminho_Screenshots}Terceiros/Contatos/                            ERRO Atividades de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Atividades de Contatos
    RPA.Windows.Get Text    Cadastro de Atividades de Contatos (1)
    BaseDesktop.Screenshot                Cadastro de Atividades de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Atividades de Contatos
    Fechar janela

Terceiros > Contatos > Consulta de contatos realizados
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}Terceiros/Contatos/                                     ERRO Consulta de contatos realizados
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Consulta de contatos realizados
    RPA.Windows.Get Text    Consulta de Contatos Realizados (1)
    BaseDesktop.Screenshot                Consulta de Contatos Realizados (1)    ${Caminho_Screenshots}Terceiros/Contatos/Consulta de contatos realizados
    Fechar janela

Categorias de Terceiros
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                           ERRO Categorias de Terceiros
    Cadastros
    RPA.Windows.Click       Categorias de Terceiros
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    BaseDesktop.Screenshot                Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar janela

Grupos de Terceiros
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}                       ERRO Grupos de Terceiros
    Cadastros
    RPA.Windows.Click       Grupos de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    BaseDesktop.Screenshot                Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupos de Terceiros
    Fechar janela

Limite de Crédito
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}                     ERRO Limite de Crédito
    Cadastros
    RPA.Windows.Click       Limite de Crédito
    RPA.Windows.Get Text    Cadastro de Limite de Crédito (1)
    BaseDesktop.Screenshot                Cadastro de Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito
    Fechar janela

Planos de Contas
    [Teardown]              Caso aconteça erro                 ${Caminho_Screenshots}                    ERRO Planos de Contas
    Cadastros
    RPA.Windows.Click       Plano de Contas
    RPA.Windows.Get Text    Cadastro do Plano de Contas (1)
    BaseDesktop.Screenshot                Cadastro do Plano de Contas (1)    ${Caminho_Screenshots}Planos de Contas
    Fechar janela

Tipos de Documento
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}                       ERRO Tipos de Documentos
    Cadastros
    RPA.Windows.Click       Tipos de Documento
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    BaseDesktop.Screenshot                Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Tipos de Documentos
    Fechar janela

Tipo de Financiamento
    [Teardown]              Caso aconteça erro                       ${Caminho_Screenshots}                         ERRO Tipo de Financiamento
    Cadastros
    RPA.Windows.Click       Tipo de Financiamento
    RPA.Windows.Get Text    Cadastro de Tipo de Financiamento (1)
    BaseDesktop.Screenshot                Cadastro de Tipo de Financiamento (1)    ${Caminho_Screenshots}Tipo de Financiamento
    Fechar janela

Portadores
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}              ERRO Portadores
    Cadastros
    RPA.Windows.Click       Portadores
    RPA.Windows.Get Text    Cadastro de Portadores (1)
    BaseDesktop.Screenshot                Cadastro de Portadores (1)    ${Caminho_Screenshots}Portadores
    Fechar janela

Carteiras de Cobranças
    [Teardown]              Caso aconteça erro                        ${Caminho_Screenshots}                          ERRO Carteiras de Cobranças
    Cadastros
    RPA.Windows.Click       Carteiras de Cobrança
    RPA.Windows.Get Text    Cadastro de Carteiras de Cobranças (1)
    BaseDesktop.Screenshot                Cadastro de Carteiras de Cobranças (1)    ${Caminho_Screenshots}Carteiras de Cobranças
    Fechar janela

Tipos de Cobrança
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}                     ERRO Tipos de Cobrança
    Cadastros
    RPA.Windows.Click       Tipos de Cobrança
    RPA.Windows.Get Text    Cadastro de Tipos de Cobrança (1)
    BaseDesktop.Screenshot                Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Tipos de Cobrança
    Fechar janela

Bancos
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}          ERRO Bancos
    Cadastros
    RPA.Windows.Click       Bancos
    RPA.Windows.Get Text    Cadastro de Bancos (1)
    BaseDesktop.Screenshot                Cadastro de Bancos (1)    ${Caminho_Screenshots}Bancos
    Fechar janela

Formas de Pagamento
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}                       ERRO Formas de Pagamento
    Cadastros
    RPA.Windows.Click       Formas de Pagamento
    RPA.Windows.Get Text    Formas de Pagamento (1)
    BaseDesktop.Screenshot                Formas de Pagamento (1)    ${Caminho_Screenshots}Formas de Pagamento
    Fechar janela

Formas de Pagamento (SISPAG)
    [Teardown]              Caso aconteça erro                              ${Caminho_Screenshots}                                ERRO Formas de Pagamento (SISPAG)
    Cadastros
    RPA.Windows.Click       Formas de Pagamento (SISPAG)
    RPA.Windows.Get Text    Cadastro de Formas de Pagamento (SISPAG) (1)
    BaseDesktop.Screenshot                Cadastro de Formas de Pagamento (SISPAG) (1)    ${Caminho_Screenshots}Formas de Pagamento (SISPAG)
    Fechar janela

Bandeiras de Cartões
    [Teardown]              Caso aconteça erro                  ${Caminho_Screenshots}                        ERRO Bandeiras de Cartões
    Cadastros
    RPA.Windows.Click       Bandeiras de Cartões
    RPA.Windows.Get Text    Cadastro de Bandeiras Cartão (1)
    BaseDesktop.Screenshot                Cadastro de Bandeiras Cartão (1)    ${Caminho_Screenshots}Bandeiras de Cartões
    Fechar janela

Autorizadoras de Cartões
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Autorizadoras de Cartões
    Cadastros
    RPA.Windows.Click       Autorizadoras de Cartões
    RPA.Windows.Get Text    Cadastro de Autorizadoras de Cartão (1)
    BaseDesktop.Screenshot                Cadastro de Autorizadoras de Cartão (1)    ${Caminho_Screenshots}Autorizadoras de Cartões
    Fechar janela

Centros de Custos
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}                     ERRO Centros de Custos
    Cadastros
    RPA.Windows.Click       Centros de Custos
    RPA.Windows.Get Text    Cadastro de Centros de Custos (1)
    BaseDesktop.Screenshot                Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Centros de Custos
    Fechar janela

Históricos Contábeis
    [Teardown]              Caso aconteça erro                      ${Caminho_Screenshots}                        ERRO Históricos Contábeis
    Cadastros
    RPA.Windows.Click       Históricos Contábeis
    RPA.Windows.Get Text    Cadastro de Históricos Contábeis (1)
    BaseDesktop.Screenshot                Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar janela

Indexadores
    [Teardown]              Caso aconteça erro             ${Caminho_Screenshots}               ERRO Indexadores
    Cadastros
    RPA.Windows.Click       Indexadores
    RPA.Windows.Get Text    Cadastro de Indexadores (1)
    BaseDesktop.Screenshot                Cadastro de Indexadores (1)    ${Caminho_Screenshots}Indexadores
    Fechar janela

Índices Financeiros
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}                       ERRO Índices Financeiros
    Cadastros
    RPA.Windows.Click       Índices Financeiros
    RPA.Windows.Get Text    Cadastro de Índices Financeiros (1)
    BaseDesktop.Screenshot                Cadastro de Índices Financeiros (1)    ${Caminho_Screenshots}Índices Financeiros
    Fechar janela

Limite de Crédito > Documentos
    [Teardown]                Caso aconteça erro                       ${Caminho_Screenshots}Limite de Crédito/              ERRO Documentos
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Windows.Click         Documentos
    RPA.Windows.Get Text      Documentos para Limite de Crédito (1)
    BaseDesktop.Screenshot                  Documentos para Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Documentos
    Fechar janela

Limite de Crédito > Tipos Aprovação
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}Limite de Crédito/                   ERRO Tipos Aprovação
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Cadastro de Tipos de Aprovação (1)
    BaseDesktop.Screenshot                  Cadastro de Tipos de Aprovação (1)    ${Caminho_Screenshots}Limite de Crédito/Tipos Aprovação
    Fechar janela


Limite de Crédito > Níveis de Aprovação
    [Teardown]                Caso aconteça erro                                             ${Caminho_Screenshots}Limite de Crédito/                       ERRO Níveis de Aprovação
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Cadastro Estágios de aprovação para o Limite de Crédito (1)
    BaseDesktop.Screenshot                  Cadastro Estágios de aprovação para o Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Níveis de Aprovação
    Fechar janela

Limite de Crédito > Dados para Análise
    [Teardown]                Caso aconteça erro                              ${Caminho_Screenshots}Limite de Crédito/                      ERRO Dados para Análise
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Cadastro de Dados para Limite de Crédito (1)
    BaseDesktop.Screenshot                  Cadastro de Dados para Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Dados para Análise
    Fechar janela

Limite de Crédito > Tipos de Cálculos/Fórmulas
    [Teardown]                Caso aconteça erro                                          ${Caminho_Screenshots}Limite de Crédito/                              ERRO Tipos de Cálculos_Fórmulas
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    i
    RPA.Windows.Get Text      Cadastro de Tipos de Cálculos para Limite de Crédito (1)
    BaseDesktop.Screenshot                  Cadastro de Tipos de Cálculos para Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Tipos de Cálculos_Fórmulas
    Fechar janela

Limite de Crédito > Estrutura Análise
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Limite de Crédito/                     ERRO Estrutura Análise
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Estrutura de Cálculos para o Limite de Crédito (1)
    BaseDesktop.Screenshot                  Cadastro de Estrutura de Cálculos para o Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Estrutura Análise
    Fechar janela

Limite de Crédito > Fórmulas/Cálculo Limite de crédito
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Limite de Crédito/                     ERRO Fórmulas_Cálculo Limite de crédito
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Cadastro de Cálculos para o Limite de Crédito (1)
    BaseDesktop.Screenshot                  Cadastro de Cálculos para o Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Fórmulas_Cálculo Limite de crédito
    Fechar janela

Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    BaseDesktop.Screenshot                  Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela

Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    BaseDesktop.Screenshot                  Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela

Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    BaseDesktop.Screenshot                  Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela

Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    BaseDesktop.Screenshot                  Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela

Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    BaseDesktop.Screenshot                  Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela

Relatórios > Terceiros
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Terceiros
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Relatório de Clientes/Fornecedores (1)
    BaseDesktop.Screenshot                  Relatório de Clientes/Fornecedores (1)    ${Caminho_Screenshots}Relatórios/Terceiros
    Fechar janela

Relatórios > Tipos de Documentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Tipos de Documentos
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    i
    RPA.Windows.Get Text      Relatório de Tipos de Documentos (1)
    BaseDesktop.Screenshot                  Relatório de Tipos de Documentos (1)    ${Caminho_Screenshots}Relatórios/Tipos de Documentos
    Fechar janela

Relatórios > Portadores
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Portadores
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Relatório de Portadores (1)
    BaseDesktop.Screenshot                  Relatório de Portadores (1)    ${Caminho_Screenshots}Relatórios/Portadores
    Fechar janela

Relatórios > Plano de Contas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Plano de Contas
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Relatório de Plano de Contas (1)
    BaseDesktop.Screenshot                  Relatório de Plano de Contas (1)    ${Caminho_Screenshots}Relatórios/Plano de Contas
    Fechar janela

Relatórios > Históricos Contábeis
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Históricos Contábeis
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    h
    RPA.Windows.Get Text      Relatório de Históricos Contábeis (1)
    BaseDesktop.Screenshot                  Relatório de Históricos Contábeis (1)    ${Caminho_Screenshots}Relatórios/Históricos Contábeis
    Fechar janela

Relatórios > Centros de Custos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Centros de Custos
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Relatório de Centros de Custos (1)
    BaseDesktop.Screenshot                  Relatório de Centros de Custos (1)    ${Caminho_Screenshots}Relatórios/Centros de Custos
    Fechar janela

Relatórios > Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Países
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Relatório de Países (1)
    BaseDesktop.Screenshot                  Relatório de Países (1)    ${Caminho_Screenshots}Relatórios/Países
    Fechar janela

Relatórios > Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Estados
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Estados (1)
    BaseDesktop.Screenshot                  Relatório de Estados (1)    ${Caminho_Screenshots}Relatórios/Estados
    Fechar janela

Relatórios > Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Municípios
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Relatório de Municípios (1)
    BaseDesktop.Screenshot                  Relatório de Municípios (1)    ${Caminho_Screenshots}Relatórios/Municípios
    Fechar janela

Relatórios > Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Regiões
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Regiões (1)
    BaseDesktop.Screenshot                  Relatório de Regiões (1)    ${Caminho_Screenshots}Relatórios/Regiões
    Fechar janela

Relatórios > Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Localidades
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Relatório de Localidades (1)
    BaseDesktop.Screenshot                  Relatório de Localidades (1)    ${Caminho_Screenshots}Relatórios/Localidades
    Fechar janela

Relatórios > Estabelecimentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Relatórios/          ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Relatório de Estabelecimentos (1)
    BaseDesktop.Screenshot                  Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Relatórios/Estabelecimentos
    Fechar janela

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    BaseDesktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    BaseDesktop.Screenshot                  Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot                  Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupos Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Grupos Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    BaseDesktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela

Parâmetros > Configurações de Estação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Encerrar
    Encerrar tudo