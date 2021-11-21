Dado('que acesso o Menu') do
    @nav.tap_button
  end
  
  Dado('clico em Cadastrar novo') do
    @nav.list
  end
  
  Dado('preencho os dados do cliente') do |table|
    data = table.rows_hash
    log(data) #MOSTRA O QUE TEM DENTRO DA VARIAVEL
    @insert.insertData(data[:nome],data[:rg],data[:cpf],data[:nasc],data[:ender],data[:num],data[:bairro],data[:cep],data[:cidade],data[:tel],data[:email])
    sleep 3
  end

  Quando('valido a mensagem e clico em OK: {string}') do |notice|
    expect(@insert.ValidatePopUp.text).to eql notice
    @insert.clickOk
  end
  
  Então('sistema conclui cadastro') do
    expect(@insert.ValidateText.text).to eql "Cadastro de Clientes"
  end