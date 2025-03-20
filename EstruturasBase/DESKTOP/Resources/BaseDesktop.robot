*** Settings ***
#Esse arquivo comporta as keyword que carregam elementos para dentro do programa para posteriormente serem
#utilizados, assim quando temos varias suites de testes apenas importamos esse arquivo para a pasta o
#que otimiza a utilização do aplicativo.
Library     SikuliLibrary
Library     RPA.Desktop
Library     RPA.Windows
Library     OperatingSystem

*** Variables ***
${front}

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
    Add Image Path      ${EXECDIR}\\EstruturasBase\\DESKTOP\\Elements

Iniciar sessao manager
    Carregar os elementos do app
    SikuliLibrary.Click       Abrir-Manager.png

Iniciar sessao front
    Carregar os elementos do app
    ${front}=   RPA.Desktop.Open Application      C:\\Limber\\Turismo-PARQUES-NATURAIS\\cde_win_bca_frontR10-25.exe

Terminar sessao 
    Stop Remote Server

Encerrar teste manager
    SikuliLibrary.Close application       [Limber Bilheteria Manager - Standard Version]   #O nome da aplication deve ser o mesmo que aparece no aplicativo na barra inferior

Encerrar teste front
    SikuliLibrary.Close application       [Limber Bilheteria Front - Standard Version]

Encerrar tudo
    RPA.Desktop.Close all applications

Abrindo cadastro bilhetes
        Sleep                               2s
        SikuliLibrary.Click                 Cadastros.png
        SikuliLibrary.Click Text            Bilhetes

Abrindo emissão de bilhetes
        Sleep                               1s
        SikuliLibrary.Click                 Cadastros.png
        Sleep                               1s
        Press keys                          right
