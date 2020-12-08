class Cli
    def start
        puts "Welcome to the Star Wars Starships App!"
        puts "loading starship information..."
        puts ""
        Api.load_data
        menu
    end

    def menu
        puts "Here is the list of all the starships you can interact with:"
        puts""
        list_starships
        puts""
        puts "Enter a number choice or type 'exit' to exit program"
        get_input
    end
    
    def get_input
        input = gets.chomp
        check_input(input)
        index = input.to_i - 1
            if  input == "exit"
                puts "Exiting App. May the Force be with you."
                exit
            elsif input == "menu"
                menu
            elsif check_input(input) && valid?(index)
                puts "Hang on while we grab the data..."
                sleep(1)
                puts""
                puts "Here is the data we currently have on the starship you selected:"
                puts ""
                starship_traits(index)
                puts ""
                puts "To choose another ship, enter the number of the ship you want to see or..."
                puts "Type 'menu' to see the list of starships again."
                puts "You can exit the app at any time by typing 'exit'."
                get_input
            else check_input(input) && valid?(index) != true
                puts "Invalid input. Please Try again."
                sleep(1)
                get_input
            end
    
    end

    def valid?(index)
        if index >= 0 && index < Starship.all.length
            true
        end
    end
    def check_input(input)
        input !~ /\D/
    end


    def list_starships
        Starship.all.each.with_index(1) do |starship, index|
            puts "#{index}. #{starship.name}"
        end
    end

    def starship_traits(input)
        puts "Name: #{Starship.all[input].name}"
        puts "Cargo Capacity: #{Starship.all[input].cargo_capacity}"
        puts "Hyperdrive Rating: #{Starship.all[input].hyperdrive_rating}"
        puts "Cost (in credits): #{Starship.all[input].cost_in_credits}"
    end
    
end
