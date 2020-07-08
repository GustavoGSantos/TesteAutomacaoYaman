Quando('entro na tela de um sapato') do
    find('a[title="Sapatos"]').click
    find('div[data-position="0"]').click
    @paginaProduto = find('h1[itemprop="name"]')
    sleep(3)
end

Quando('seleciono o tamanho') do
    first('ul[data-type="size"] > li > a[qa-option="available"]').click
    sleep(3)
end

Quando('adiciono ao carrinho') do
    find('#buy-button-now').click
    sleep(3)
end

Então('espero que o produto seja adicionado corretamente') do
    @produtoCarrinho = find('h3[qa-auto="product-name"]')
    expect(@produtoCarrinho) == @paginaProduto
end

Quando('prossigo para a tela de pagamento') do
    find('a[qa-auto="cart-buy-button"]').click
    fill_in(id: 'username', with: 'emailteste@teste.com')
    fill_in(id: 'password', with: '123456789')
    find('#login-button').click
    sleep(3)
end

Então('espero que os produtos sejam os mesmos que adicionei no carrinho') do
    @produtoPagamento = find('.product-info > strong')
    expect(@produtoCarrinho) == @paginaProduto && expect(@produtoCarrinho) == @produtoPagamento
end