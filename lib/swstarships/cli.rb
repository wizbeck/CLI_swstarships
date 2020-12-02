class Cli
    # Cli operates the app, 
    # we want to: 
    # display a greeting to the user, and 
    # have the user input a number to reach the corresponding starship from our array of objects.
    # if the user inputs something that is not a number(integer) that is not within the range of our array count, spits back an error.
    # methods help with abstraction and coding more DRY

    def start
        puts "Welcome to the Star Wars Starships App"
        puts "loading starship information..."
        Api.load_data
        menu
    end

    def menu
        puts "Here is a list of all the starships you can inspect."
        list_starships
        get_input
    end
    
    def get_input
        puts "Enter a number choice or type 'exit' to exit program"
        input = gets.chomp.to_i

        if input.valid? == true
            starship.all[input - 1]
        else
            puts "Invalid choice. Try again or type 'exit' to exit program"
            menu
        end
    end


    def list_starships
        Starship.all.each.with_index(1) do |starship, index|
            puts "#{index}. #{starship.name}"
        end
    end
    
end
