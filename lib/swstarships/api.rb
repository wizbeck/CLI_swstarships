class Api
#load the starship data, and parse with JSON into a easy-to-manipulate format.

    def self.load_data
        load_starships
    end

    def self.load_starships
        base_url = "https://swapi.dev/api/starships"
        response = RestClient.get(base_url)
        data = JSON.parse(response.body)
        binding.pry
    end
    

end
