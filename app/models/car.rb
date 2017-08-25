class Car

  attr_accessor :name, :screen

  @@all = []

  def initialize(name, screen)
    @name = name
    @screen = screen
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.movie_screens
    #Returns the movie screen _this_ car is at
  end

end
