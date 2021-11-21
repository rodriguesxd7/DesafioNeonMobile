#language: pt

Funcionalidade: Validar cliente
    
    Cenario: Validar cliente criado

        Dado que acesso o Menu
        Quando procuro pelo cliente criado 
            |cliente|Bruno Cesar Rodrigues|
        Então sistema apresenta apenas clientes com o nome digitado

        