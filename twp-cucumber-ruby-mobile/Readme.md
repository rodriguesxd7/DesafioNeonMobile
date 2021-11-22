Cucumber com Ruby
================================

Este projeto foi criado com a finalidade de criar um framework que realiza testes para ANDROID utilizando somente a busca pelos elementos separadamente.

##**Tecnologias utilizadas**
 
 - **Ruby** : É uma linguagem dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita. *Ver mais: [ruby](https://www.ruby-lang.org/pt/)*
 - **Cucumber**: É uma ferramenta open source criada para testar outros softwares. Ela executa testes de aceitação utilizando a escrita BDD. *Ver mais: [Cucumber](cucumber.io)*
 - **Appium**: É uma ferramenta open source utilizada para execução de testes automatizados em aplicações nativas, híbridas ou web aplicativos. *Ver mais: [Appium](http://appium.io/)*

**Requisitos para execução**:

 - Mac (Android e IOS) ou Windows (Somente Android) 
  - com a variável de ambiente $ANDROID_HOME configurada em seu SDK android
 - Java 1.8 >=
 - Android SDK
 - Ant Version 1.8 >
 - Adb
 - Ruby 2.23 >=
  - com bundler gem (gem install bundler)
 - Appium (http://appium.io/)
 - Android Device 4.1 >=

Passos para execução:

 - Conectar seu Android ou IOS previamente configurado no Appium
 - Levantar sua aplicação Appium
 - Instalar manualmente a `gem install allure-cucumber`
 - Executar: `bundle install`
 - Se der erro no comando acima, rodar esse: `gem install bundler:2.0.2`
 - Rodar o seguinte comando para os testes `cucumber -t @sua_tag PLATFORM_NAME=android ou ios`

 Passos para execução das features:

 - Necessário rodar uma feature automatizada por vez, sendo elas "preencher_form.feature" e "preencher_form_completo.feature"
 - Para ver a evidência com relátorio é necessário realizar a instalação do Allure pelo site https://docs.qameta.io/allure/#_installing_a_commandline
 - Após a instalação, rodar o comando "Allure serve logs", que irá abrir uma página web. Eu estou usando CMDER como CMD para rodar os comandos.
 - Ao rodar os testes, o log dos testes serão criados também na raiz do projeto: "logs"


 Cenários:
 - No arquivo "cenarios.feature" estão todos os cenários que mapeei para a tela de cadastro de cliente, como parte do desafio 1, mas apenas os dois primeiros são automatizados.

 Observações:

- Tentei criar o mais próximo do padrão Page Objects, para que o framework fique mais fácil de usar
- Alguns campos do APP são capturados os elementos mas o framework não digita nada dentro, mesmo clicando no campo e depois enviado o valor, por esse motivo alguns campos ficam vazios
- Infelizmente fiz a automação de apenas dois cenários, gostaria de ter feito todos, porém, o app não tem botão de "voltar" e como não tenho tanta experiência com mobile, não encontrei nenhum método que simule o teclado, para simular o CTRL + BACKSPACE para o app voltar para a tela anterior
- Alguns itens acredito que possam ser melhorados, como por exemplo a classe "preencher_form_completo_steps.rb", mas para realizar essas melhorias levaria mais tempo de análise, e também a feature de cenários automatizados, poderia colocar os dois cenários no mesmo arquivo feature, mas irei melhorando o frame com o passar do tempo.



