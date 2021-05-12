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
        ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝  ╚═════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═════╝░".colorize(:light_yellow)
        puts ""
        charprint("loading starship information")
        Api.load_starships
        menu
    end

    def menu
        charprint("Here is the list of all the starships you can interact with:")
        list_starships
        puts ""
        charprint("Enter a corresponding number or type 'exit' to exit the archive")
        get_input
    end
    
    def get_input
        input = gets.chomp
        check_input(input)
        index = input.to_i - 1
            if  input == "exit"
                charprint("Stopping")
                    3.times do
                        print "."
                        sleep(0.45)
                    end
                puts ""
                charprint("May the Force be with you.")
                sleep(0.3)
                charprint("Thank you for using swstarships!")
                exit
            elsif input == "menu"
                menu
            elsif check_input(input) && valid?(index)
                charprint("Hang on while we grab the data...")
                sleep(1)
                charprint("Here is the data we currently have on the #{Starship.all[index].name}:")
                puts ""
                starship_traits(index)
                charprint("To choose another ship, enter the number of the ship you want to see")
                charprint("You can Type 'menu' to see the list of starships again.")
                charprint("Or you can exit the app at any time by typing 'exit'.")
                get_input
            else check_input(input) && valid?(index) != true
                sleep(0.3)
                charprint("Invalid input. Please Try again.")
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
            sleep(0.1)
        end
    end


    def starship_traits(input)
        starship = Starship.all[input]
        charprint("Name: #{starship.name}")
        charprint("Cargo Capacity: #{starship.cargo_capacity}")
        charprint("Hyperdrive Rating: #{starship.hyperdrive_rating}")
        charprint("Cost (in credits): #{starship.cost_in_credits}")
        puts ""
    end

    def charprint(string)
        string.each_char do |c|
            print c
            sleep(0.02)
        end
        puts ""
    end
    
end
