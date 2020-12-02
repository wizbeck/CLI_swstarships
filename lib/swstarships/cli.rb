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
        puts "Here is a list of all the starships you can interact with:"
        list_starships
        get_input
    end
    
    def get_input
        puts "Enter a number choice or type 'exit' to exit program"
        input = gets.chomp.to_i - 1
            if  input == "exit"
                exit
            elsif valid?(input) != true
                puts "Invalid choice. Try again or type 'exit' to exit program"
                menu
            else
                puts "hang on while we grab the data"
            end
    
        #then we want to check if the input is a valid option. 
        #valid being: a number/integer, and within the value of the array length.
        #array length is 36, so input should == 0-35 since dealing with index
        #thinking of creating another method valid? to determine if an input is valid for DRY code
        #exit not working. 
        # if input.valid? == true
            #starship.all[input].#attr_name  to return that data 
            #subtracting 1 from user's input should be taken into account prior to displaying starship data
        # else
            #puts "Invalid choice. Try again or type 'exit' to exit program"
            #menu
        # end
    binding.pry
    end

    def valid?(input)
        if input == "exit"
            exit
        elsif input >= 0 && input < 36
            true
        end
    end


    def list_starships
        Starship.all.each.with_index(1) do |starship, index|
            puts "#{index}. #{starship.name}"
        end
    end
    
end
