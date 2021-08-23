class Metodos 
include HTTParty
def get_cep_valido
  url = "https://viacep.com.br/ws/01001000/json"
  @retorno = HTTParty.get(url, :verify => false,
   :headers => { "Content-Type" => "application/json"})
   
 end 
 def get_cep_invalido
   url = "https://viacep.com.br/ws/00000000/json"
  @retorno = HTTParty.get(url, :verify => false,
   :headers => { "Content-Type" => "application/json"})
 end 
end




