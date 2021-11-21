#language: pt

Funcionalidade: Preencher informações

    Cenario: Preencher dados basicos

        Dado que acesso o Menu
        E clico em Cadastrar novo
        E preencho os dados do cliente
            |nome|Bruno Cesar Rodrigues|
            |rg|488526558|
            |cpf|85265495135|
            |nascimento|26 09 1998|
            |endereco|Rua Japao|
            |numero|144|
            |bairro|Centro|
            |cep|05236159|
            |cidade|osasco|
            |telefone|11999999999|
            |email|teste@teste.com|
        Quando valido a mensagem e clico em OK: "Cadastro efetuado com sucesso"
        Então sistema conclui cadastro

