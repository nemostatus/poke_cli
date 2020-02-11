
class API 
 
 def self.get_data
    response = RestClient.get("https://pokeapi.co/api/v2/pokemon/")
    pokemon_array = JSON.parse(response.body)["results"]
   pokemon_array.each do |pokemon|
      Pokemon.new(pokemon)
    end 
  end
  def self.more_data(url)
    response = RestClient.get(url)
  end
end 
 
  

