class MovieScreen

  attr_accessor :movie, :capacity, :drive_in

  @@all = []

  def initialize(movie, capacity, drive_in)
    @movie = movie
    @capacity = capacity
    @drive_in = drive_in
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.all_screens
    self.all
  end

  def cars
    cars_array = []
    Car.all.each do |car|
      if car.screen == self
        cars_array << car
      end
    end
    cars_array
  end

  def at_capacity
    if self.capacity == self.cars.size
      true
    else
      false
    end
  end

  def add_car(name)
    if self.at_capacity == true
      "Movie is sold out"
    end
    if self.at_capacity == false
      Car.new(name, self)
      "Enjoy!"
    end
  end

end
