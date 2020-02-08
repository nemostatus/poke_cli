
class API 
 
 def self.get_data
    response = RestClient.get("https://pokeapi.co/api/v2/pokemon/")
    pokemon_array = JSON.parse(response.body)["results"]
   pokemon_array.each do |pokemon|
      Pokemon.new(pokemon)
    end 
  end 
  def self.more_data(number)
     response = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{number}")
     pokemon_array = JSON.parse(response.body)["abilities"]
    end 
  end 
 
  

