# Teste de Automação da Yaman

Automação criada para resolver os desafios propostos pela Yaman

## Instalação Windows

Selenium web driver -> https://chromedriver.chromium.org/home

Extrair para a pasta C:\Windows
 
Ruby + Devkit -> https://rubyinstaller.org/downloads/

## Instalção Linux ubuntu/debian

Ruby `sudo apt-get install ruby-full`

Após instalação do ruby no sistema operacional rodar o comando abaixo no terminal

``` ruby
gem install bundler
```

## Rodando os testes 

Dentro da pasta DesafioWeb e DesafioAPI onde o repositório foi clonado executar o comando abaixo no terminal

`bundle install`

## Rodando os testes de api

Para rodar os testes de API executar o seguinte comando no terminal

`cucumber`

## Rodando os teste de Web

Para rodar os testes de Web executar o seguinte comando no terminal

`bundle exec cucumber`

Após executar esse comando e os testes terminarem de rodar será gerado um arquivo .html na pasta report, ao abrir o arquivo no browser
será possível ver o resultado de todos os testes e na pasta screenshot é possível ver os prints do resultado esperado dividido por sucesso e falha