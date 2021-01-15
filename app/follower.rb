require 'pry'

class Followers
    @@all = []

    attr_accessor :name, :age, :life_motto

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self   
  end

  def self.all
    @@all
  end
  
  def join_cult(cult)
    BloodOath.new(self, cult)
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
        follower.age >= age
    end
  end

end

  