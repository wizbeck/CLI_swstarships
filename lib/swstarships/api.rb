class Api
    def self.base_url
        "https://swapi.dev/api/starships/"
    end

    def self.load_data
        load_starships
    end
    

    def self.load_starships
        page_num = 1
        
        while true
        response = RestClient.get(base_url + "?page=#{page_num}")
        data = JSON.parse(response.body)    
        data["results"].each do |starship_data|
            Starship.new(starship_data)
        end

            if data["next"].nil?
                break
            end
            page_num += 1
        end
    end


end