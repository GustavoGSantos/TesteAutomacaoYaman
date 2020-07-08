Dado('que estou na home') do
    #Visita a url que foi definida como padrão no env.rb
    visit '/'
    sleep(3)
end

Quando('clico na barra de busca') do
    find_by_id('search-input').click
    sleep(3)
end

Quando('pesquiso por um sapato') do
    fill_in(id: 'search-input', with: 'Sapato Social Couro Democrata Aspen')
    find('.ns-icon-search').click
    sleep(3)
end

Então('espero que retorne o produto pesquisado') do
    find('div[parent-sku="D83-1263-256"')
    sleep(3)
end