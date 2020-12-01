class Cli
    #Cli operates the app, 
    #we want to display a greeting to the user, and have the user input a number to reach the corresponding starship from swapi.
    #methods help with abstraction and coding more DRY

    def start
        puts "Welcome to the Star Wars Starships App"
        puts "loading starship information..."
        Api.load_data
    end

    def menu_options
        
    end
    
    def get_input
        puts "Enter the number that corresponds to the ship you would like to know more about or type 'next' for the next page of starships"
        gets.chomp

    end

    def next

    end
    
end
