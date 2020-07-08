Dado('url de consulta da api') do
    $uri_base = 'https://api.trello.com/1/actions/592f11060f95a3d3d46a987a'
end
  
Quando('realizo um get') do
    $response = HTTParty.get($uri_base)
end
  
Então('espero que retorne o código {int}') do |codigo|
    expect($response.code).to eq codigo
end
  
Então('espero que seja exibido o campo name da estrutura list') do
    res = $response.body
    name = JSON.parse(res)['data']['list']['name']
    expect(name) != nil
    #Método usado para exibir o dados do campo name acima da linha de então, porque o método puts será removido depois da versão 5.0.0
    Kernel.puts name
end  