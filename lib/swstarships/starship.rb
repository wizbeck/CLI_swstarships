class Starship

    @@all = []

    def initialize
    
    end

    def self.all
        @@all
    end

    def save
        self.all << self
    end

end