require 'pry'
class Cult

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location,founding_year, slogan)
        @name = name
        @location = location
        @slogan = slogan
        @founding_year = founding_year
        @@all << self
    end

    def all_cult_members        ### ==> helper method members
        BloodOath.all.select {|members| members.cult == self}
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        all_cult_members.count
    end

    def self.find_by_name(name)
        Cult.all.select {|all_cults| all_cults.name == name}
    end

    def self.find_by_location(location)
        Cult.all.select {|all_cults| all_cults.location == location}
    end

    def self.find_by_founding_year(year)
        Cult.all.select {|all_cults| all_cults.founding_year == year}
    end


    def average_age
        all_cult_members.map {|members| members.follower.age}.inject(:+) / all_cult_members.count
    end

    def my_followers_mottos
        motos = all_cult_members.map {|members| members.follower.life_moto}
        return motos.each do |moto| puts moto
        end
    end

    def followers
        all_cult_members.map {|members| members.follower}
    end

    def self.least_popular
        self.all.min_by do |cult|
            cult.followers.length
        end
    end

    
    
            


end