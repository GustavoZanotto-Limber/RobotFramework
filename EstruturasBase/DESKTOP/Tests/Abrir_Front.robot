*** Settings ***
Documentation       Suite de teste do front
#Uma suite de teste é basicamente onde ira rodar os tester, que ira puxar as funções e executar em tela

Resource        C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
#Resource é basicamente onde fazemos o carregamento das imagens o inicio e o termino da sessao de testes.
#

Suite Setup         Iniciar sessao front      #È possivel fazer um setup que iniciará sempre que o programa começar
                                                #Ele executa antes dos testes como uma preparação de ambiente
#Suite Teardown      Encerrar tudo               #Existe também o que ocorre após a execução dos testes para normalemente fechar
            
                                                #os programas executados ou caso queira deslogar de algum sistema.                                                     
*** Variables ***
${quantidade_de_clicks}
${tecla}
${aba_a_ser_testada}   
${caixa_aberto}                              

*** Keywords ***
Abrindo cadastros
        Sleep                               2s
        [Arguments]                         ${aba_a_ser_testada}
        SikuliLibrary.Click                 Cadastros.png
        Sleep                               1s
        SikuliLibrary.Click Text            ${aba_a_ser_testada}

selecionando dentro de manutenções
        Sleep                               2s
        [Arguments]                         ${aba_a_ser_testada}
        Set Anchor                              Aplicativo
        #O arguments funciona como um valor a ser passado para uma função ou seja você pode pedir
        #nome de algum campo para poder reutilizar o codigo.
        Sleep                               1s
        SikuliLibrary.Click                 Manutenções
        Clear Anchor
        Sleep                               1s
        RPA.Windows.Click                   ${aba_a_ser_testada}
        # SikuliLibrary.Click                 ${aba_a_ser_testada}.png

abrindo caixa operador
        Sleep                                     2s
        SikuliLibrary.Click               Cadastros.png
        repetidor de teclas                     right      4
        Sleep                                   2s
        Clear Anchor
        RPA.Windows.Click                       Abertura / Fechamento
        Sleep                                   2s
        ${caixa_aberto}=    Run Keyword And Ignore Error      RPA.Windows.Get Text              Fechar Caixa
    
    
        IF  ${caixa_aberto} != (\'FAIL\', "ElementNotFound: Element not found with locator \'Fechar Caixa\'")
                RPA.Windows.Click               Fechar Caixa
                RPA.Windows.Click               Sim
                Sleep                           2s
                RPA.Desktop.Press Keys          Esc
                Sleep                           2s
                RPA.Desktop.Press Keys          Enter   
        
        END

        SikuliLibrary.Click                     Cadastros.png
        repetidor de teclas                     right      4
        Sleep                                   2s
        Clear Anchor
        RPA.Windows.Click                       Abertura / Fechamento
        RPA.Windows.Click                       Abrir Caixa
        Sleep                                   2s
        RPA.Desktop.Press Keys                  Enter 
        Sleep                                   2s
        RPA.Desktop.Press Keys                  Enter


*** Test Cases ***                          


Vendendo Bilhete
        Iniciar sessao front
        Set Anchor                              Aplicativo
        #Uma anchor é basicamente um limitador do que o programa irar ver na tela desse momento em diante caso 
        #tenha uma anchor para a barra de navegação o programa não consiguira clickar nas opções fora dessa barra
        abrindo caixa operador
        selecionando dentro de manutenções      Emissão de Bilhetes
        Type text                       5308

    #Fechar Front

    