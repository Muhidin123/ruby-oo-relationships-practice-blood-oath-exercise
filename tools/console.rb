require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


a = Cult.new("cult a", "Chicago", 1999, "cult a")
b = Cult.new("cult b", "New York", 2020, "cult b")
c = Cult.new("cult c", "Las Vegas", 2011, "cult c")
d = Cult.new("cult d", "Las Vegas", 2018, "cult c")

follower_1 = Follower.new("Chris", 26, "Follower 1")
follower_2 = Follower.new("Miles", 36, "Follower 2")
follower_3 = Follower.new("Mike", 18, "Follower 3")

###if to create new BloodOath (add follower to cult)

#bloodoath_1 = BloodOath.new(follower_1, a)
#bloodoath_2 = BloodOath.new(follower_3, d)



binding.pry