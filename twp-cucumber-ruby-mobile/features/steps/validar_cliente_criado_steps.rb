
Dado('que ja estou com o cliente criado') do
  @insert.ValidateText
end

Dado('clico em voltar') do
  @client.tap_screen
end

Quando('procuro pelo cliente criado') do |table|
    data = table.rows_hash
    log(data)                          
    @client.buscaCliente(data[:name])
  end                                                                           
                                                                                
  Então('sistema apresenta apenas clientes com o nome digitado') do
    data = table.rows_hash
    log(data)             
    @client.validaNome(data[:nomeBusca]) 
  end                                                                           