class API 
 
 def self.get_data
    response = RestClient.get("")
    pokemon_array = JSON.parse(response.body)["results"]
    pokemon_array.each do |pokemon|
      Pokemon.new(pokemon)
    end 
  end 
end 