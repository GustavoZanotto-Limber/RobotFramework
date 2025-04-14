*** Settings ***
Documentation    Smoke Test: Balança
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao balança


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Balanças/Utilitários/    

*** Keywords ***

Utilitários

    Cadastros
    repetidor de teclas    right    5

*** Test Cases ***

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Utilitários
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       Fechar

Papel de Parede
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                   ERRO Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configurar Menu Principal
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Menu Principal
    RPA.Windows.Click       Fechar

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar Janela

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configuração de Liberação
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    Fechar janela

Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                            ERRO Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                              ERRO Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    Fechar janela

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Criar Usuario de Log
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Configuração da Balança
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Configuração da Balança
    RPA.Windows.Get Text    Configuração da Balança (1)
    BaseDesktop.Screenshot  Configuração da Balança (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Encerrar
    Encerrar tudo