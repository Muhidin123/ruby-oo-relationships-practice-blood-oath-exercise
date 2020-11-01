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

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        BloodOath.all.select {|all_cults| all_cults.cult == self}.count
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
    

end