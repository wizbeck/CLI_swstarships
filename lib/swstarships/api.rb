class Api
#load the starship data, and parse with JSON into a easy-to-manipulate format.
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
        # binding.pry
        data["results"].each do |starship_data|
            Starship.new(starship_data)
        end

            if data["next"].nil?
                break
            end
            page_num += 1
        end
        #binding.pry
    end


end

#this method only brings back first page with 10 options. there are 36 total.
        #how to bring or "load" all 36 starships into a hash/array?
        #create some sort of loop and interpolate page number while the "next" key is equal to a url...
        #also needs condition for that next url. or page number.
        #data["next"] = next page in url to get data from and parse