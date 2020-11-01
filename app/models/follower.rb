require 'pry'

class Follower

    attr_accessor :name , :age, :life_moto

    @@all = []

    def initialize(name , age , life_moto)
        @name = name
        @age = age
        @life_moto = life_moto
        @@all << self
    end

    def join_cult(cult)
    #takes in an argument of a `Cult` instance and adds this follower to
    #the cult`s lista of followers
        BloodOath.new(self, cult)
    end

    def self.all
        @@all
    end


    def self.of_a_certain_age(age_arg) # ==> integer argm.
    #returns an `Array` of followers who are the given age or older
        self.all.select {|member| member.age >= age_arg}
    end
    
    
    def blood_oaths
        BloodOath.all.select do |blood_oath|
          blood_oath.follower == self
        end
    end

    
    def cults
        blood_oaths.map do |blood_oath|
            blood_oath.cult
        end
    end

    def self.most_active
    #returns the `Follower` instance who has joined the most cults
        follower_activity = self.all.map do |follower|
            {follower => follower.cults.length}
        end
        sorted = follower_activity.sort_by {|follower| follower.values[0]}.reverse
        sorted[0]
    end

    def self.top_ten
    end




end