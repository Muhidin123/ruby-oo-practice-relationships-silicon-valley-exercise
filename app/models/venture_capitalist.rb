class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end 


    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|capitalist| capitalist.total_worth > 1_000_000_000}
        #if need for only names #.map {|capitalist| capitalist.name
    end

    def offer_contract(startup,type_of_investment, amount)
        FundingRound.new(startup, self, type_of_investment, amount)
    end

    def funding_rounds
    #returns an array of all funding rounds for that venture capitalist
        FundingRound.all.select {|all_inv| all_inv.venture_capitalist == self}
    end

    def portfolio
    #Returns a **unique** list of all startups this venture capitalist has funded
        FundingRound.all.select {|rounds| rounds.venture_capitalist == self}.map {|investment| investment.startup}.uniq
    end
    
    def biggest_investment
    # returns the largest funding round given by this venture capitalist
        max_invest = FundingRound.all.select {|rounds| rounds.venture_capitalist == self}.map {|funding| funding.investment}.max
        FundingRound.all.select {|rounds| rounds.investment == max_invest}
    end

    def invested(domain_name)
    #given a **domain string**, returns the total amount invested in that domain
        funding_rounds.select {|investment| investment.startup.domain == domain_name}.map {|funds| funds.investment}.sum
    end

end
