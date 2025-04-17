*** Settings ***
Documentation    Smoke Test: Balança
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao balança


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Cadastros/    

*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Terceiros/                        ERRO Cadastro de Terceiros
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros/Cadastro de Terceiros
    Fechar janela

Terceiros > Limite de Crédito
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/             ERRO Limite de Crédito
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Limite de Crédito (1)
    BaseDesktop.Screenshot  Cadastro de Limite de Crédito (1)    ${Caminho_Screenshots}Terceiros/Limite de Crédito
    Fechar Janela

Terceiros > Tipos de Garantia
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/             ERRO Tipos de Garantia
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Garantia (1)
    BaseDesktop.Screenshot  Cadastro de Tipos de Garantia (1)    ${Caminho_Screenshots}Terceiros/Tipos de Garantia
    Fechar Janela

Terceiros > Categorias de Terceiros
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Terceiros/                            ERRO Categorias de Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Terceiros/ Categorias de Terceiros
    Fechar janela

Terceiros > Grupo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/             ERRO Grupo de Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Terceiros/ Grupo de Terceiros
    Fechar Janela

Terceiros > Grupo de Terceiros Fidelizados
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/             ERRO Grupo de Terceiros Fidelizados
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Grupo de Terceiros Fidelizados (1)
    BaseDesktop.Screenshot  Grupo de Terceiros Fidelizados (1)    ${Caminho_Screenshots}Terceiros/ Grupo de Terceiros Fidelizados
    Fechar Janela

Terceiros > Contatos > Registros de Contatos
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}Terceiros/Contatos/                         ERRO Registros de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Registro de Contato (1)
    BaseDesktop.Screenshot  Registro de Contato (1)    ${Caminho_Screenshots}Terceiros/Contatos/Registros de Contatos
    RPA.Windows.Click       Fechar

Terceiros > Contatos > Tipo de Histórico de Contatos
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Contatos/                                   ERRO Tipo de Histórico de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    BaseDesktop.Screenshot  Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Tipo de Histórico de Contatos
    Fechar janela

Terceiros > Contatos > Atividades de Contatos
    [Teardown]              Caso aconteça erro                        ${Caminho_Screenshots}Terceiros/Contatos/                            ERRO Atividades de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Atividades de Contatos (1)
    BaseDesktop.Screenshot  Cadastro de Atividades de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Atividades de Contatos
    Fechar janela

Terceiros > Contatos > Consulta de contatos realizados
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}Terceiros/Contatos/                                     ERRO Consulta de contatos realizados
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Contatos Realizados (1)
    BaseDesktop.Screenshot  Consulta de Contatos Realizados (1)    ${Caminho_Screenshots}Terceiros/Contatos/Consulta de contatos realizados
    Fechar janela

Terceiros > Troca de Vendedor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/          ERRO Troca de Vendedor    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Troca de Vendedor (1)
    BaseDesktop.Screenshot  Troca de Vendedor (1)    ${Caminho_Screenshots}Terceiros/Troca de Vendedor
    Fechar Janela

Terceiros > Cadastro Categoria SICOR (PRONAF)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/          ERRO Cadastro Categoria SICOR (PRONAF)  
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro Categoria SICOR (PRONAF) (1)
    BaseDesktop.Screenshot  Cadastro Categoria SICOR (PRONAF) (1)    ${Caminho_Screenshots}Terceiros/Cadastro Categoria SICOR (PRONAF)
    RPA.Windows.Click       Fechar

Terceiros > Aprovação/Rejeição atualização Cadastral Força de Vendas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/          ERRO Aprovação/Rejeição atualização Cadastral Força de Vendas
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Atualização Cadastral (1)
    BaseDesktop.Screenshot  Atualização Cadastral (1)    ${Caminho_Screenshots}Terceiros/Aprovação/Rejeição atualização Cadastral Força de Vendas
    Fechar Janela

Terceiros > Rating > Cadastro Perguntas/Respostas
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Rating/                                   ERRO Cadastro Perguntas_Respostas
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Rating
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro Perguntas Rating (1)
    BaseDesktop.Screenshot  Cadastro Perguntas Rating (1)    ${Caminho_Screenshots}Terceiros/Rating/Cadastro Perguntas_Respostas
    Fechar janela

Terceiros > Rating > Cálculo Rating
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Rating/                                   ERRO Cálculo Rating
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Rating
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cálculo Rating Terceiro (1)
    BaseDesktop.Screenshot  Cálculo Rating Terceiro (1)    ${Caminho_Screenshots}Terceiros/Rating/Cálculo Rating
    Fechar janela

Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}          ERRO Setores    
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    BaseDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar Janela

Itens > Itens
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Itens
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Itens (1)
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Itens/Itens
    Fechar Janela

Itens > Itens - Edição em massa
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Itens - Edição em massa
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Itens - Edição em massa (1)
    BaseDesktop.Screenshot  Cadastro de Itens - Edição em massa (1)    ${Caminho_Screenshots}Itens/Itens - Edição em massa
    Fechar Janela

Itens > Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Depósitos
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    BaseDesktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Itens/Depósitos
    Fechar Janela

Itens > Fabricantes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Fabricantes
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    F  
    RPA.Windows.Get Text      Cadastro de Fabricantes (1)
    BaseDesktop.Screenshot    Cadastro de Fabricantes (1)    ${Caminho_Screenshots}Itens/Fabricantes
    Fechar janela

Itens > Grupo de Inspeção
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Grupo de Inspeção
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    F  
    RPA.Windows.Get Text      Cadastro de Grupo de Inspeção (1)
    BaseDesktop.Screenshot    Cadastro de Grupo de Inspeção (1)    ${Caminho_Screenshots}Itens/Grupo de Inspeção
    Fechar janela
Itens > Unidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Unidades
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    BaseDesktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Itens/Unidades
    Fechar Janela

Itens > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Estampas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    BaseDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Itens/Estampas
    Fechar Janela

Itens > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Marcas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    BaseDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Itens/Marcas
    Fechar Janela

Itens > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Cores
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Cores (1)
    BaseDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Itens/Cores
    Fechar Janela

Itens > Tamanhos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Tamanhos
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    BaseDesktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Itens/Tamanhos
    Fechar Janela

Itens > Tabela de Preços
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Tabela de Preços
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Tabela de Preços (1)
    BaseDesktop.Screenshot  Tabela de Preços (1)    ${Caminho_Screenshots}Itens/Tabela de Preços
    Fechar Janela

Itens > Tabela de Umidade
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/            ERRO Tabela de Umidade
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  A       
    RPA.Windows.Get Text    Cadastro de Índices de Descontos (1)
    BaseDesktop.Screenshot  Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Itens/Tabela de Umidade
    Fechar janela

Itens > Descontos para Grãos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Descontos para Grãos
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Descontos para Grãos  
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    BaseDesktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Itens/Descontos para Grãos
    Fechar janela

Itens > Grades
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Grades
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Cadastro de Grades (1)
    BaseDesktop.Screenshot    Cadastro de Grades (1)    ${Caminho_Screenshots}Itens/Grades
    Fechar janela



Itens > Tipo do Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Tipo Serviço
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    V  
    RPA.Windows.Get Text      Tipo Serviço (1)
    BaseDesktop.Screenshot    Tipo Serviço (1)    ${Caminho_Screenshots}Itens/Tipo Serviço
    Fechar janela

Itens > Gênero do produto
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Gênero produto
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    N  
    RPA.Windows.Get Text      Gênero Produto (1)
    BaseDesktop.Screenshot    Gênero Produto (1)    ${Caminho_Screenshots}Itens/Gênero produto
    Fechar janela

Itens > Safras
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        ERRO Safras
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    S 
    RPA.Windows.Get Text      Cadastro de Safras (1)
    BaseDesktop.Screenshot    Cadastro de Safras (1)    ${Caminho_Screenshots}Itens/Safras
    Fechar janela

Itens > Categorias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             ERRO Categorias
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    BaseDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Itens/Categorias
    Fechar Janela

