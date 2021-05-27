class Starship
attr_accessor :name, :cost_in_credits, :hyperdrive_rating, :cargo_capacity, :passengers, :manufacturer, :max_atmosphering_speed

    @@all = []

    def initialize(data)
        
        self.name = data["name"]
        self.cost_in_credits = data["cost_in_credits"]
        self.hyperdrive_rating = data["hyperdrive_rating"]
        self.cargo_capacity = data["cargo_capacity"]
        self.passengers = data["passengers"]
        self.manufacturer = data["manufacturer"]
        self.max_atmosphering_speed = data["max_atmosphering_speed"]

        @@all << self

    end

    def self.all
        @@all
    end


end 
