Dado("que eu faça um get na api") do
    get_cep_valido
  end
  
  Então("espero que o codigo de retorno seja {int}  e o valor do campo ibge seja exibido") do |valor|
    expect(@retorno.code).to eq(valor)
    puts @retorno['ibge']

  end
  Dado("que eu faça um chamada na api") do
    get_cep_invalido
  end
  
  Então("espero que o retorno seja {int}  e o valor do erro seja exibido") do |valor|
    expect(@retorno.code).to eq(valor)
    puts @retorno
  end