class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name,founder,domain)
        @name = name
        @domain = domain
        @founder = founder
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(name, domain)
    #change name and domain of startup (only public method)
        self.name = name
        self.domain = domain
    end

    def self.find_by_founder(name)
        self.all.find {|startup| startup.founder == name}
    end

    def self.domains
        self.all.map {|startups| startups.domain}
    end

    def sign_contract(venture_capitalist, type_of_investment, amount_invested)
        FundingRound.new(self,venture_capitalist, type_of_investment, amount_invested)
    end

    def num_funding_rounds
    #array of all funding rounds for that venture_capitalist
        FundingRound.all.select do |startup| startup.startup == self
        end 
    end

    def total_funds
    #Returns the total sum of investments that the startup has gotten
        num_funding_rounds.map {|funding| funding.investment}.sum
    end

    def investors
    #Returns a **unique** array of all the venture capitalists that have invested in this company
        num_funding_rounds.map {|investment| investment.venture_capitalist}.uniq
    end

    def big_investors
    #Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
        self.investors.select{|name| VentureCapitalist.tres_commas_club.include?(name)}
    end

    



end
