#language: pt

#Tag para rodar apenas essa funcionalidade
@buscarProduto
Funcionalidade: Buscar produto

#Tag para rodar apenas esse cenário
@pesquisarProduto
Cenario: Pesquisar um produto
  Dado que estou na home
  Quando clico na barra de busca
  E pesquiso por um sapato
  Então espero que retorne o produto pesquisado