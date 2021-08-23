
 Dado('que eu faça uma requisição para API de CEPs com um cep valido') do
  @consulta_cep.get_cep_valido
 end

 Quando('eu obtenho os dados retornados') do
  @retorno = @consulta_cep.get_cep_valido
end
  Então("espero que o codigo ibge seja exibido") do 
    
    expect(@retorno)
    puts @retorno['ibge']
  end

  Dado('que eu faça uma requisição para API de CEPs com um cep invalido') do
    @consulta_cep_invalido.get_cep_invalido
  end

  Quando('eu consulto o retorno das infoemações') do
    @retorno = @consulta_cep_invalido.get_cep_invalido
  end
  
  Então("espero que o retorno seja {int}  e o valor do erro seja exibido") do |valor|
   
    expect(@retorno.code).to eq(valor)
    puts valor
    puts @retorno
  end