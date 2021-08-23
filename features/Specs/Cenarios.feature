#language: pt
Funcionalidade:  consultar cep

        @get_consulta_valido
        Cenario: Fazer uma consulta com cep valido e retornar o codigo do campo Ibge

            Dado que eu faça uma requisição para API de CEPs com um cep valido
             Então espero que o codigo ibge seja exibido

        @get_consulta_invalido
        Cenario: Fazer uma consulta de cep invalido

            Dado que eu faça uma requisição para API de CEPs com um cep invalido
             Então espero que o retorno seja 200  e o valor do erro seja exibido