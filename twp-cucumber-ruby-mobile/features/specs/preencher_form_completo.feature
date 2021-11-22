#language: pt

Funcionalidade: Criação de usuário     

    Cenario: Preencher dados completos

        Dado que acesso o Menu
        E clico em Cadastrar novo
        E clico em radio button Completo
        E preencho os dados completos do cliente
            |nome|Bruno Cesar Rodrigues|
            |rg|488526558|
            |emissor|SSP|
            |cpf|85265495135|
            |nascimento|26 09 1998|
            |mae|Maria|
            |pai|jose|
            |endereco|Rua Japao|
            |numero|144|
            |bairro|Centro|
            |cep|05236159|
            |cidade|osasco|
            |estado|AM|
            |natural|sao paulo|
            |telefone|11999999999|
            |email|teste@teste.com|
            |empresa|neon|
            |cargo|QA|
            |endereco|Av. centro|
            |cep|00000000|
            |telefone|11952523655|
            |dataAdmi|01012022|
            |renda|12000|
            |banco|Santander|
            |agencia|0328|
            |conta|123456|
        Quando valido a mensagem e clico em OK: "Cadastro efetuado com sucesso"
        Então sistema conclui cadastro  