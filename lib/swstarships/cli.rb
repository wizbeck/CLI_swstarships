class Cli
    def start
        puts "
        ░██████╗████████╗░█████╗░██████╗░  ░██╗░░░░░░░██╗░█████╗░██████╗░░██████╗  
        ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗  ░██║░░██╗░░██║██╔══██╗██╔══██╗██╔════╝  
        ╚█████╗░░░░██║░░░███████║██████╔╝  ░╚██╗████╗██╔╝███████║██████╔╝╚█████╗░  
        ░╚═══██╗░░░██║░░░██╔══██║██╔══██╗  ░░████╔═████║░██╔══██║██╔══██╗░╚═══██╗  
        ██████╔╝░░░██║░░░██║░░██║██║░░██║  ░░╚██╔╝░╚██╔╝░██║░░██║██║░░██║██████╔╝  
        ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝  ░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░  
        
        ░██████╗████████╗░█████╗░██████╗░  ░██████╗██╗░░██╗██╗██████╗░░██████╗
        ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗  ██╔════╝██║░░██║██║██╔══██╗██╔════╝
        ╚█████╗░░░░██║░░░███████║██████╔╝  ╚█████╗░███████║██║██████╔╝╚█████╗░
        ░╚═══██╗░░░██║░░░██╔══██║██╔══██╗  ░╚═══██╗██╔══██║██║██╔═══╝░░╚═══██╗
        ██████╔╝░░░██║░░░██║░░██║██║░░██║  ██████╔╝██║░░██║██║██║░░░░░██████╔╝
        ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝  ╚═════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═════╝░"
        puts ""
        puts "loading starship information"
        Api.load_starships
        menu
    end

    def menu
        puts "Here is the list of all the starships you can interact with:"
        puts""
        list_starships
        puts""
        puts "Enter a corresponding number or type 'exit' to exit the archive"
        get_input
    end
    
    def get_input
        input = gets.chomp
        check_input(input)
        index = input.to_i - 1
            if  input == "exit"
                puts "Stopping"
                    3.times do
                        print "."
                        sleep(0.45)
                    end
                puts "May the Force be with you."
                puts "Thank you for using swstarships!"
                exit
            elsif input == "menu"
                menu
            elsif check_input(input) && valid?(index)
                puts "Hang on while we grab the data..."
                sleep(1)
                puts""
                puts "Here is the data we currently have on the #{Starship.all[index].name}:"
                puts ""
                starship_traits(index)
                puts ""
                puts "To choose another ship, enter the number of the ship you want to see"
                puts "You can Type 'menu' to see the list of starships again."
                puts "Or you can exit the app at any time by typing 'exit'."
                get_input
            else check_input(input) && valid?(index) != true
                sleep(0.3)
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
        starship = Starship.all[input]
        puts "Name: #{starship.name}"
        puts "Cargo Capacity: #{starship.cargo_capacity}"
        puts "Hyperdrive Rating: #{starship.hyperdrive_rating}"
        puts "Cost (in credits): #{starship.cost_in_credits}"
    end

    
    
end
