*** Settings ***
Documentation    Smoke Test: Utilitários
Resource         ${EXECDIR}/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao front

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Utilitários/ 

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    5

*** Test Cases    ***

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Utilitários
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração dos Favoritos (1)
    Screenshot              Configuração dos Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       Fechar
    
Papel de Parede
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                   ERRO Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    RPA.Windows.Get Text    Seleção de Papel de Parede
    Screenshot              Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    Screenshot              Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    Screenshot              Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    Fechar janela

Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                            ERRO Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    Screenshot              Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                              ERRO Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    Screenshot              Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    Fechar janela


Layout de Bilhetes
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Layout de Bilhetes
    Utilitários
    RPA.Windows.Click       Layout de Bilhetes
    RPA.Windows.Get Text    Layout de Bilhetes (1)
    Screenshot              Layout de Bilhetes (1)    ${Caminho_Screenshots}Layout de Bilhetes
    Fechar janela

Configuração de Impressoras
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configuração de Impressoras
    Utilitários
    RPA.Windows.Click       Configuração de Impressoras
    RPA.Windows.Get Text    Configuração Impressoras (1)
    Screenshot              Configuração Impressoras (1)    ${Caminho_Screenshots}Configuração de Impressoras
    Fechar janela
    RPA.Desktop.Press Keys  Left
    RPA.Desktop.Press Keys  Enter

Observações Padrão
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Observações Padrão
    Utilitários
    RPA.Windows.Click       Observações Padrão
    RPA.Windows.Get Text    Cadastro de Observações Padrão (1)
    Screenshot              Cadastro de Observações Padrão (1)    ${Caminho_Screenshots}Observações Padrão
    Fechar janela

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Criar Usuario de Log
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    Screenshot              Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    Screenshot              Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Abrir Gaveta
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Abrir Gaveta
    Utilitários
    RPA.Windows.Click       Abrir Gaveta
    RPA.Windows.Get Text    Salvar Saída de Impressão como
    Screenshot              Salvar Saída de Impressão como    ${Caminho_Screenshots}Abrir Gaveta
    RPA.Windows.Click       Fechar

Metas Orçamento/Previsão
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Metas Orçamento_Previsão
    Utilitários
    RPA.Windows.Click       Metas Orçamento/Previsão
    RPA.Windows.Get Text    Cadastro de Metas para BI (1)
    Screenshot              Cadastro de Metas para BI (1)    ${Caminho_Screenshots}Metas Orçamento_Previsão
    Fechar janela

Metas Realizadas Adicionais
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Metas Realizadas Adicionais
    Utilitários
    RPA.Windows.Click       Metas Realizadas Adicionais
    RPA.Windows.Get Text    Lançamentos de Metas Realizadas (1)
    Screenshot              Lançamentos de Metas Realizadas (1)    ${Caminho_Screenshots}Metas Realizadas Adicionais
    Fechar janela


Encerrar
    Encerrar tudo