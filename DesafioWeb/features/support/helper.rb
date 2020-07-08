#Módulo para criação de relatório de execução
module Helper
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "report/screenshot/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        #Método para criar um link no relatório para exibir imagem, porém está com erro no cucumber de tamanho não suportável
        #attach('image/png', 'CLique aqui')
    end
end