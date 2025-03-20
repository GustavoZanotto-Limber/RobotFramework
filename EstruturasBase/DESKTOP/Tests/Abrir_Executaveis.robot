*** Settings ***
Documentation       Suite de teste do manager
#Uma suite de teste é basicamente onde ira rodar os tester, que ira puxar as funções e executar em tela

Resource        ${EXECDIR}/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
#Resource é basicamente onde fazemos o carregamento das imagens o inicio e o termino da sessao de testes.
#

# Suite Setup         Iniciar sessao manager      #È possivel fazer um setup que iniciará sempre que o programa começar
                                                #Ele executa antes dos testes como uma preparação de ambiente
# Suite Teardown      Encerrar tudo               #Existe também o que ocorre após a execução dos testes para normalemente fechar
                                                #os programas executados ou caso queira deslogar de algum sistema.                                                     

*** Keywords ***

Abrir Manager
    Click       Abrir-Manager.png

Fechar Front
    Encerrar teste front
    Press Keys                                 Left
    Press Keys                                 Enter

Selecionando a bilheteria front
    Iniciar sessao front
    Sleep           5s
    Press keys      enter
    Sleep           7s      Carregando a base...      
    Type text       lbadmin940
    Press keys      enter
    Press keys      enter


Selecionando a bilheteria manager
    Sleep           5s      #Sleep é um timer para esperar normalmente utilizado para esperar algum elemento carregar em tela
    Press keys      enter
    Sleep           7s      Carregando a base...      
    Type text       lbadmin940
    Press keys      enter
    Press keys      enter

Abrindo cadastro bilhetes
        Sleep                               2s
        SikuliLibrary.Click                 Cadastros.png
        Sleep                               1s
        SikuliLibrary.Click Text            Bilhetes

selecionando dentro de manutenções
        Sleep                               2s
        [Arguments]                         ${aba_a_ser_testada}
        #O arguments funciona como um valor a ser passado para uma função ou seja você pode pedir
        #nome de algum campo para poder reutilizar o codigo.
        Sleep                               1s
        SikuliLibrary.Click                 Manutenções
        Sleep                               1s
        RPA.Windows.Click                   Cancelamento de Bilhetes
        # SikuliLibrary.Click                 ${aba_a_ser_testada}.png


*** Test Cases ***                          

# Abrindo a tela do manager
#     Selecionando a bilheteria manager   lbadmin940


#     Abrindo cadastro bilhetes
#     Encerrar teste manager

Abrindo a tela do front
    Selecionando a bilheteria front
    selecionando dentro de manutenções         Emissao-de-bilhetes
    #Fechar Front