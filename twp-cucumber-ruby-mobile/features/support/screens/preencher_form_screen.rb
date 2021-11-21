

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

    def ValidatePopUp
        find_element(xpath: "//*[@text='Cadastro efetuado com sucesso']")
    end 

    def clickOk
        find_element(xpath: "//*[@text='OK']").click
    end 

    def ValidateText
       return find_element(xpath: "//*[@text='Cadastro de Clientes']")        
    end
end 