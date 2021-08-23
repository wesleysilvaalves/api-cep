#language: pt
Funcionalidade:consultar cep
como usuario do site
eu quero realizar requisições na api 
para validar as infoemações retornadas

        @get_consulta_valido
        Cenario: Fazer uma consulta com cep valido e retornar o codigo do campo Ibge

            Dado que eu faça uma requisição para API de CEPs com um cep valido
             Quando eu obtenho os dados retornados
             Então espero que o codigo ibge seja exibido

        @get_consulta_invalido
        Cenario: Fazer uma consulta de cep invalido

            Dado que eu faça uma requisição para API de CEPs com um cep invalido
             Quando eu consulto o retorno das infoemações
             Então espero que o retorno seja 200  e o valor do erro seja exibido