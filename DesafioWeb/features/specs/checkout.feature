#language: pt

#Tag para rodar apenas essa feature
@checkout
Funcionalidade: Carrinho de produtos

#Tag para rodar apenas esse cenário
@adicionarProdutoCarrinho
Cenario: Adicionar produto ao carrinho
    Dado que estou na home
    Quando entro na tela de um sapato
    E seleciono o tamanho
    E adiciono ao carrinho
    Então espero que o produto seja adicionado corretamente

@validarProdutoTelaPagamento
Cenario: Validar o produto que foi adicionado ao carrinho na tela de pagamento
    Dado que estou na home
    Quando entro na tela de um sapato
    E seleciono o tamanho
    E adiciono ao carrinho
    E prossigo para a tela de pagamento
    Então espero que os produtos sejam os mesmos que adicionei no carrinho