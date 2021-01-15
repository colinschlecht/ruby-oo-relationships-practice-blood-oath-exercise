class Cult
    @@all = []
    attr_accessor :name, :location, :year, :slogan

  def initialize(name, location, year, slogan)
    @name = name
    @location = location
    @year = year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    BloodOath.new(name, follower)
  end

  def get_bloodoath
    BloodOath.all.map do |BloodOath|
        BloodOath.cult
    end
  end
  def get_followers
    get_bloodoath.all.map do |BloodOath|
        BloodOath.follower
    end
  end
  def cult_population
    get_followers.count
  end
end