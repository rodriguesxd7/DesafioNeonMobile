Quando('acesso o Menu') do
   @nav.tap_button
  end
  
  Então('vejo a lista de opções de navegação') do
    @nav.list
  end