  Dado('clico em radio button Completo') do
    @insert.clickRadio
  end
  
  Dado('preencho os dados completos do cliente') do |table|
    dados = table.rows_hash
    log(dados) #MOSTRA O QUE TEM DENTRO DA VARIAVEL
    @insert.insertCompleteData(dados[:nome],dados[:rg],dados[:emissor],dados[:cpf],
        dados[:nasc],dados[:mae],dados[:pai],dados[:ender],dados[:num],
        dados[:bairro],dados[:cep],dados[:cidade],
        dados[:estado],dados[:natural],dados[:tel],dados[:email],
        dados[:empresa],dados[:cargo],dados[:endJob],dados[:cepJob],
        dados[:telJob],dados[:admJob],dados[:renda],dados[:banco],dados[:agencia],dados[:conta])
    sleep 5
  end