class BloodOath
    @@all = []
    attr_accessor :follower, :cult, :date

  def initialize(follower, cult, date = Time.now.strftime("%y/%m/%d"))
    @follower = follower
    @cult = cult
    @initiation_date = date
    @@all << self
  end

  def self.all
    @@all
  end


end

