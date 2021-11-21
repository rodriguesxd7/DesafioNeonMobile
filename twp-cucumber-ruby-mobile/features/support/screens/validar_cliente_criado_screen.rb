class ClienteCriado
    def tap_screen()
            Appium::TouchAction.new.tap(x: 245, y: 2076).perform
    end 

    def buscaCliente(name)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editPesquisar").send_keys(name)
    end

    def validaNome(nomeBusca)
        find_element(xpath: "//*[@text='#{nomeBusca}']")
    end
end
