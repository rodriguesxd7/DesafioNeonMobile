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