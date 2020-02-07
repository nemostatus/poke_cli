class PokeCli::CLI 
  def call 
    puts "Welcome pokemon trainer"
    puts "To use your pokedex and view a pokemon enter: 'pokedex'"
    puts "To continue on your journey enter: 'exit'"
    API.get_data
    menu
  end 
  def menu 
    input = gets.strip.downcase
    if input == "pokedex"
      pokemon_list
      menu
      elsif input == "exit"
      bye
    else 
      invalid_entry
  end 
end 
def pokemon_list
  puts "1. pokemon 1"
   puts "2. pokemon 2"
   puts "3. pokemon 3"
   puts ""
   puts ""
   puts "Which pokemon would you like stats about?"
   input = gets.strip.downcase
   pokemon_selection(pokemon)
   
end 
def pokemon_selection(pokemon)
  puts "#{pokemon}"
end 
  def bye 
    puts "Enjoy your journey and try to catch 'em all!"
  end
  def invalid_entry
    puts "Invalid pokedex entry."
      menu
  end 
end 