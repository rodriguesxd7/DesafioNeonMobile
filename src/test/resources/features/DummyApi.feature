#language: pt

@challenge
Funcionalidade: Validação dos metodos do MS restapiexample

  @create
  Cenario: Criação de funcionário
    Dado que vou executar a API restapiexample
    Quando enviar a requisicao com nome <name>, salario <salary> e idade <age>
    Entao servico retorna status <status> duzentos e um com response para validacao

  @consult
  Cenario: Consultar funcionário criado
    Dado que realizei a criacao de um funcionario
    Quando vou conulstar seus dados criados
    Entao servico retorna status 200 com os dados para validacao