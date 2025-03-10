*** Settings ***

Library     SikuliLibrary
Library     RPA.Desktop

*** Variables ***
${region}


*** Keywords ***
#As keywords e a setting funcionam basicamente de forma igual tanto no web quanto no desktop
#a mudança de um para o outro é na forma de pegar os elementos em tela, no web é muito mais facil pois temos
#alguns recursos como IDs, xpath, name, class, etc. Já no desktop utilizamos a biblioteca Sikuli
#Essa biblioteca permite tirar prints da tela para podermos localizar os elementos e permitir interagir com
#eles atraves do robot ou seja o sikuli é um meio termo assim como o selenium que permite a interação do 
#codigo com o que tem em tela.

Carregar os elementos do app
    #Essa keyword "add Image Path" é da biblioteca Sikuli você pode conferir mais comandos 
    #dessa biblioteca no link: https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html
    Add Image Path      ${EXECDIR}\\EstruturasBase\\Elements

Iniciar sessao manager
    SikuliLibrary.Click       Abrir-Manager.png
    #SikuliLibrary.Open Application       cde_win_bca_manager      #O nome deve ser referente ao nome da imagem que você criou e colocou na pasta elements

Iniciar sessao front
    SikuliLibrary.Click       Abrir-Front.png

Terminar sessao 
    Stop Remote Server

Encerrar teste manager
    SikuliLibrary.Close application       cde_win_bca_manager    #O nome da aplication deve ser o mesmo que aparece no gerenciador de tarefas

Encerrar teste front
    SikuliLibrary.Close application       cde_win_bca_front

Selecionando a bilheteria manager
    Iniciar sessao manager
    Sleep           4s
    Press keys      enter
    Sleep           3s      Carregando a base...      
    Type text       lbadmin940
    Press keys      enter
    Press keys      enter

Selecionando a bilheteria front
    Iniciar sessao front
    Sleep           4s
    Press keys      enter
    Sleep           3s      Carregando a base...      
    Type text       lbadmin940
    Press keys      enter
    Press keys      enter


Abrindo cadastro bilhetes
        SikuliLibrary.Click                 Cadastros.png
        SikuliLibrary.Click Text            Bilhetes

Abrindo emissão de bilhetes
        Sleep                               1s
        SikuliLibrary.Click                 Cadastros.png
        Sleep                               1s
        Press keys                          right
        ${region}=                          Find Element  ocr:"Emissão de Bilhetes"
        RPA.Desktop.Click                   ${region}

*** Test Cases ***

Abrindo a tela do manager
    Carregar os elementos do app
    Selecionando a bilheteria manager
    Abrindo cadastro bilhetes
    Encerrar teste manager

Abrindo a tela do front
    Carregar os elementos do app
    Selecionando a bilheteria front
    Abrindo emissão de bilhetes
    Encerrar teste front