#language: pt

#Tag para rodar apenas essa feature
@validarRetornoAPI
Funcionalidade: API

#Tag para rodar apenas esse cenário
@validarStatusCode
Cenario: Validar código de retorno
    Dado url de consulta da api
    Quando realizo um get 
    Então espero que retorne o código 200

@validarName
Cenario: Validar o campo name da estrutura list
    Dado url de consulta da api
    Quando realizo um get 
    Então espero que seja exibido o campo name da estrutura list