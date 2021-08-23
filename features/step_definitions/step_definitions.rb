
 Dado('que eu faça uma requisição para API de CEPs com um cep valido') do
  get_cep_valido
 end

  Então("espero que o codigo ibge seja exibido") do 
    expect(@retorno.code)
    puts @retorno['ibge']
  end

  Dado('que eu faça uma requisição para API de CEPs com um cep invalido') do
    get_cep_invalido
  end
  
  Então("espero que o retorno seja {int}  e o valor do erro seja exibido") do |valor|
    expect(@retorno.code).to eq(valor)
    puts @retorno
  end