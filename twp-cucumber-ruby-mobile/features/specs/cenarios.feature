#language: pt

Funcionalidade: Criação de usuário

    Cenario: Preencher dados basicos
        Dado que acesso o Menu
        E clico em Cadastrar novo
        E preencho os dados do cliente
        Quando valido a mensagem e clico em OK: "Cadastro efetuado com sucesso"
        Então sistema conclui cadastro

    Cenario: Preencher dados completos
        Dado que acesso o Menu
        E clico em Cadastrar novo
        E clico em radio button Completo
        E preencho os dados completos do cliente
        Quando valido a mensagem e clico em OK: "Cadastro efetuado com sucesso"
        Então sistema conclui cadastro

    Cenario: Validar cliente criado
        Dado que acesso o aplicativo
        E busco pelo do cliente 
        Então o sistema ira trazer os clientes com o nome digitado

    Cenario: Excluir cliente
        Dado que acesso o aplicativo
        E busco pelo do cliente 
        E o sistema ira trazer os clientes com o nome digitado
        E clico no nome cliente
        E o sistema ira para a proxima tela
        Quando clicar em Excluir
        Então sistema ira apresentar uma mensagem de sucesso

    Cenario: Alterar dados do cliente
        Dado que acesso o aplicativo
        E busco pelo do cliente 
        E o sistema ira trazer os clientes com o nome digitado
        E clico no nome cliente
        E o sistema ira para a proxima tela
        E realizo alguma alteracao nos dados do cliente
        Quando clico em salvar
        Então sistema ira apresentar uma mensagem de sucesso

    Cenario: Buscar cliente excluido
        Dado que acesso o aplicativo
        E busco pelo do cliente excluido
        Então o sistema nao ira trazer nenhum cliente

    Cenario: Validar que aplicativo direciona para perfil completo ao realizar alteração de dados
        Dado que acesso o aplicativo
        E busco pelo do cliente 
        E o sistema ira trazer os clientes com o nome digitado
        E clico no nome cliente
        E o sistema ira para a proxima tela com o perfil completo
        E realizo alguma alteracao nos dados do cliente
        Quando clico em salvar
        Então sistema ira apresentar uma mensagem de sucesso

    Cenario: Preencher dados basicos
        Dado que acesso o Menu
        E clico em Cadastrar novo
        E não preencho nenhuma dado do cliente
        E clico em salvar
        Então valido a mensagem no campo Nome: "Insira a nome"