require 'pry'

class BloodOath
    attr_accessor :initiation_date, :follower, :cult

@@all =[]

    def initialize(follower, cult) 
        @follower = follower
        @cult = cult
        #returns a `String` that is -
        #the initiation date of this blood oath in the format _YYYY-MM-DD_.
        time = Time.now
        @initiation_date =  "#{time.year}-#{time.month}-#{time.day}"
        @@all << self
    end

    def self.all
        @@all
    end

end
