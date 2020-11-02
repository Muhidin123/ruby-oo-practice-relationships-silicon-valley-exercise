require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


startup_1 = Startup.new("Facebook","Muhidin","www.facebook.com")
startup_2 = Startup.new("Twitter","Rakshan","www.twitter.com")
startup_3 = Startup.new("Startup3","Founder3","www.startup3.com")
startup_4 = Startup.new("Startup4","Founder4","www.startup4.com")
startup_5 = Startup.new("Startup5","Founder5","www.startup5.com")

capitalist_1 = VentureCapitalist.new("Capitalist 1", 1000000000532526900000)
capitalist_2 = VentureCapitalist.new("Capitalist 2", 99999)
capitalist_3 = VentureCapitalist.new("Capitalist 3", 55522552)
capitalist_4 = VentureCapitalist.new("Capitalist 4", 52112991)
capitalist_5 = VentureCapitalist.new("Capitalist 5", 1199258927782358235782)

round_1 = FundingRound.new(startup_1, capitalist_2, "round1", 50_000)
round_2 = FundingRound.new(startup_3, capitalist_4, "round2", 10_000)
round_3 = FundingRound.new(startup_5, capitalist_1, "round3", 500_000)
round_4 = FundingRound.new(startup_4, capitalist_3, "round4", 1000)
round_5 = FundingRound.new(startup_2, capitalist_5, "round5", 30_000)
round_6 = FundingRound.new(startup_1, capitalist_1, "round1", 99999999)
round_7 = FundingRound.new(startup_1, capitalist_1, "round7", 159251)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line