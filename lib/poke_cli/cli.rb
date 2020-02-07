class PokeCli::CLI 
  def call 
    puts "Welcome pokemon trainer"
    puts "To use your pokedex and view a pokemon enter: 'pokedex'"
    puts "To continue on your journey enter: 'exit'"
    menu
  end 
  def menu 
    input = gets.strip.downcase
    if input == "pokedex"
      puts "pokedex"
      elsif input == "exit"
      puts "exit"
    else 
      puts "invalid pokedex entry."
      menu
  end 
end 
end 