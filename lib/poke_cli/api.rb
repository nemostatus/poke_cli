
class API 
 
 def self.get_data
    response = RestClient.get("https://pokeapi.co/api/v2/pokemon/")
    pokemon_array = JSON.parse(response.body)["results"]
   pokemon_array.each do |pokemon|
      Pokemon.new(pokemon)
    end 
    
  end
  def self.more_data(name,stat="abilities")
    response = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{name}")
    pokemon_array = JSON.parse(response.body)["#{stat}"]

end 
end 
 
  

