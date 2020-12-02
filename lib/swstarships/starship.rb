class Starship
attr_accessor :name, :cost_in_credits, :hyperdrive_rating, :cargo_capacity 

    @@all = []

    def initialize(data)
        
        self.name = data["name"]
        self.cost_in_credits = data["cost_in_credits"]
        self.hyperdrive_rating = data["hyperdrive_rating"]
        self.cargo_capacity = data["cargo_capacity"]
        
        @@all << self

    end

    def self.all
        @@all
    end


end


#this class should create instances of each starship from swapi, 
#store it class variable array @@all for easy retrieval of data
#need a few attributes