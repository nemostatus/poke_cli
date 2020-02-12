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
  
 Pokemon.all.each_with_index do |pokemon,index|
      puts "#{index + 1}. #{pokemon.name}"
    end 
   puts ""
   puts ""
   pokemon_stats
   choice
   end
   def pokemon_stats 
      puts "Which pokemon would you like to know about?"
    name = gets.strip.downcase
    puts "Which stats would you like to know?"
    puts  "1. Abilities
  2.Base_experience
  3.Weight
  4.Height
  5.Moves
  6.Types"
    stat = gets.strip.downcase
   puts API.more_data(name,stat)
   end 
  
   def choice 
     puts "Would you like to learn about more pokemon?"
     puts "y/n"
     input = gets.strip.downcase 
     if input == "y"
       pokemon_list 
     elsif input == "y"
    pokemon_list 
    elsif input == "n"
    bye
   else 
   invalid_entry
 end 
 end 
  
  def bye 
    puts "Enjoy your journey and try to catch 'em all!"
  end
  def invalid_entry
    puts "Invalid pokedex entry."
      menu
  end 
end 