class FundingRound

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment

    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
    #investmet ==> #returns a **number** that is the amount invested during this funding round(float) non negative
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        #@investment = investment
        if investment < 0
            @investment = 0
        else
            @investment = investment
        end
        @@all << self
    end

    def self.all
        @@all
    end
    

end
