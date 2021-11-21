

class PreencherFormScreen

    def insertData(nome, rg, cpf, nasc, ender, num, bairro, cep, cidade, tel, email)
        find_element(xpath: "//*[@text='Nome']").send_keys(nome)
        find_element(xpath: "//*[@text='RG']").send_keys(rg)
        find_element(xpath: "//*[@text='CPF']").send_keys(cpf)
        find_element(xpath: "//*[@text='Data de Nascimento']").send_keys(nasc)
        find_element(xpath: "//*[@text='Endereço']").send_keys(ender)
        find_element(xpath: "//*[@text='N°']").send_keys(num)
        find_element(xpath: "//*[@text='Bairro']").send_keys(bairro)
        find_element(xpath: "//*[@text='CEP']").send_keys(cep)
        find_element(xpath: "//*[@text='Cidade']").send_keys(cidade)
        find_element(xpath: "//*[@text='Telefone 1']").send_keys(tel)
        find_element(xpath: "//*[@text='E-mail']").send_keys(email)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
    end

    def insertCompleteData(nome, rg, emissor, cpf, nasc, mae, pai, ender, num, bairro, cep, cidade, estado, natural, tel, email, empresa, cargo, endJob, cepJob, telJob, admJob, renda, banco, agencia, conta)
        find_element(xpath: "//*[@text='Nome']").send_keys(nome)
        find_element(xpath: "//*[@text='RG']").send_keys(rg)
        find_element(xpath: "//*[@text='Org. Emissor']").send_keys(emissor)
        find_element(xpath: "//*[@text='CPF']").send_keys(cpf)
        find_element(xpath: "//*[@text='Data de Nascimento']").send_keys(nasc)
        find_element(xpath: "//*[@text='Nome da Mãe']").send_keys(mae)
        find_element(xpath: "//*[@text='Nome do Pai']").send_keys(pai)
        find_element(xpath: "//*[@text='Endereço']").send_keys(ender)
        find_element(xpath: "//*[@text='N°']").send_keys(num)
        find_element(xpath: "//*[@text='Bairro']").send_keys(bairro)
        find_element(xpath: "//*[@text='CEP']").send_keys(cep)
        find_element(xpath: "//*[@text='Cidade']").send_keys(cidade)
        find_element(xpath: "//*[@text='Naturalidade']").send_keys(natural)
        find_element(xpath: "//*[@text='Telefone 1']").send_keys(tel)
        find_element(xpath: "//*[@text='E-mail']").send_keys(email)
        
        Appium::TouchAction.new.swipe(start_x: 488, start_y: 1785, delta_x: 488, delta_y: 1785).perform

        find_element(xpath: "//*[@text='Empresa']").send_keys(empresa)
        find_element(xpath: "//*[@text='Cargo']").send_keys(cargo)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editEnderecoEmpresa").send_keys(endJob)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editCepEmpresa").send_keys(cepJob)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneEmpresa").send_keys(telJob)
        find_element(xpath: "//*[@text='Data de Admissão']").send_keys(admJob)
        find_element(xpath: "//*[@text='Renda']").send_keys(renda)
        find_element(xpath: "//*[@text='Banco']").send_keys(banco)
        find_element(xpath: "//*[@text='Agência']").send_keys(agencia)
        #find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editConta").send_keys(conta)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
    end

    def clickRadio
        @radio = find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/rdCompleto")
        @radio.click
        sleep 3
    end

    def ValidatePopUp
        find_element(xpath: "//*[@text='Cadastro efetuado com sucesso']")
    end 

    def clickOk
        find_element(xpath: "//*[@text='OK']").click
    end 

    def ValidateText
       return find_element(xpath: "//*[@text='Cadastro de Clientes']")        
    end

    def btnSalvar
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
    end
end 