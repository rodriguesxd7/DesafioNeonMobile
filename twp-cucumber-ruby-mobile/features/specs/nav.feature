#language: pt

Funcionalidade: Criação de usuário

    Cenario: Abrir Menu

        Quando acesso o Menu
        Então vejo a lista de opções de navegação

    Cenario: Preencher dados basicos

        Dado que acesso o Menu
        E clico em Cadastrar novo
        E preencho os dados do cliente
        E clico em salvar
        E valido a mensagem <msg> 
        E clico em OK
        Então sistema apresenta a proxima tela

        |msg                            |
        |"Cadastro efetuado com sucesso"|

        
    Cenario: Validar cliente criado

        Dado que acesso o Menu
        Quando procuro pelo cliente criado <user>
        Então sistema apresenta apenas clientes com o nome digitado

        |user  |
        |"Alex"|
                
    Cenario: Excluir cliente

        Dado que acesso o Menu
        E procuro pelo cliente criado <user>
        E clico no nome do cliente
        E sistema segue para a pagina de informacoes do cliente
        Quando clico no botao excluir cliente
        E clico em sim
        E sistema volta para tela inicial 
        Então valido a mensagem <msg>

        |msg|                           |
        |"Cadastro excluído com sucesso"|


    Cenario: Validar cliente excluido

        Dado que acesso o Menu
        Quando procuro pelo cliente excluido <user>
        Então sistema nao retorna nenhum cliente com o nome pesquisado


    Cenario: Incluir clientes sem informacoes

        Dado que acesso o Menu
        E clico em Cadastrar novo
        E nao preencho os dados do cliente
        E clico em salvar
        Então valido a mensagem <msg>